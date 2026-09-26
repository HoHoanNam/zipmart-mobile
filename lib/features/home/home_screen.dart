import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_typography.dart';
import '../../core/tracking/behavior_tracking_service.dart';
import '../../shared/models/product.dart';
import '../../shared/widgets/banner_carousel.dart';
import '../../shared/widgets/category_chips.dart';
import '../../shared/widgets/category_grid.dart';
import '../../shared/widgets/count_badge.dart';
import '../../shared/widgets/product_card.dart';
import '../../shared/widgets/section_header.dart';
import '../auth/auth_state_provider.dart';
import '../cart/cart_service.dart';
import '../cart/providers/cart_count_provider.dart';
import '../recommendations/rec_provider.dart';
import '../recommendations/rec_widget.dart';
import '../wishlist/providers/wishlist_count_provider.dart';
import 'providers/banners_provider.dart';
import 'providers/best_sellers_provider.dart';
import 'providers/categories_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  Future<void> _onAddToCart(BuildContext context, WidgetRef ref, Product product) async {
    final isAuthenticated = await ref.read(isAuthenticatedProvider.future);
    if (!isAuthenticated) {
      if (context.mounted) context.push('/login');
      return;
    }
    await ref.read(cartServiceProvider).addItem(product.id, 1);
    ref.invalidate(cartCountProvider);
    ref.read(behaviorTrackingServiceProvider).track(product.id, 'add_to_cart');
    if (context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Đã thêm "${product.name}" vào giỏ hàng')));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthenticated = ref.watch(isAuthenticatedProvider);
    final wishlistCount = ref.watch(wishlistCountProvider);
    final banners = ref.watch(bannersProvider);
    final categories = ref.watch(categoriesProvider);
    final bestSellers = ref.watch(bestSellersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Zipmart'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () => context.push('/products')),
          if (isAuthenticated.value == true)
            IconButton(
              icon: Badge(
                isLabelVisible: (wishlistCount.value ?? 0) > 0,
                label: CountBadge(count: wishlistCount.value ?? 0),
                child: const Icon(Icons.favorite_border),
              ),
              onPressed: () => context.push('/wishlist'),
            ),
          const SizedBox(width: AppSpacing.xs),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(bannersProvider);
          ref.invalidate(categoriesProvider);
          ref.invalidate(bestSellersProvider);
          ref.invalidate(recommendationsProvider);
          ref.invalidate(wishlistCountProvider);
        },
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
          children: [
            banners.when(
              data: (items) => BannerCarousel(banners: items, onCtaTap: (banner) => context.push('/products')),
              loading: () => const SizedBox(height: 180, child: Center(child: CircularProgressIndicator())),
              error: (err, stack) => const SizedBox.shrink(),
            ),
            const SizedBox(height: AppSpacing.lg),
            categories.when(
              data: (items) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                    child: Text('Danh mục', style: AppTypography.headline2),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  CategoryGrid(
                    categories: items,
                    onCategoryTap: (category) => context.push('/products?categoryId=${category.id}'),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  CategoryChips(
                    categories: items,
                    onAllTap: () => context.push('/products'),
                    onCategoryTap: (category) => context.push('/products?categoryId=${category.id}'),
                  ),
                ],
              ),
              loading: () => const SizedBox(height: 160, child: Center(child: CircularProgressIndicator())),
              error: (err, stack) => const SizedBox.shrink(),
            ),
            const SizedBox(height: AppSpacing.lg),
            SectionHeader(
              title: 'Bán chạy nhất',
              actionLabel: 'Xem tất cả',
              onActionTap: () => context.push('/products?sort=bestselling'),
            ),
            const SizedBox(height: AppSpacing.sm),
            bestSellers.when(
              data: (items) => SizedBox(
                height: 280,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                  itemCount: items.length,
                  separatorBuilder: (context, index) => const SizedBox(width: AppSpacing.sm),
                  itemBuilder: (context, index) {
                    final product = items[index];
                    return ProductCard(
                      product: product,
                      onTap: () => context.push('/products/${product.id}'),
                      onAddToCart: () => _onAddToCart(context, ref, product),
                    );
                  },
                ),
              ),
              loading: () => const SizedBox(height: 280, child: Center(child: CircularProgressIndicator())),
              error: (err, stack) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                child: Text('Không tải được danh sách sản phẩm.', style: AppTypography.bodyRegular),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            isAuthenticated.when(
              data: (authed) => authed
                  ? RecWidget(
                      onProductTap: (product) => context.push('/products/${product.id}'),
                      onAddToCart: (product) => _onAddToCart(context, ref, product),
                    )
                  : _LoginPromptCard(onLoginTap: () => context.push('/login')),
              loading: () => const SizedBox.shrink(),
              error: (err, stack) => const SizedBox.shrink(),
            ),
            const SizedBox(height: AppSpacing.xl),
          ],
        ),
      ),
    );
  }
}

class _LoginPromptCard extends StatelessWidget {
  const _LoginPromptCard({required this.onLoginTap});

  final VoidCallback onLoginTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.neutral300),
          borderRadius: BorderRadius.circular(AppSpacing.radiusCard),
        ),
        child: Column(
          children: [
            const Icon(Icons.auto_awesome_outlined, color: AppColors.primary, size: 28),
            const SizedBox(height: AppSpacing.sm),
            Text(
              'Đăng nhập để xem gợi ý dành riêng cho bạn',
              textAlign: TextAlign.center,
              style: AppTypography.bodyMedium,
            ),
            const SizedBox(height: AppSpacing.sm),
            ElevatedButton(onPressed: onLoginTap, child: const Text('Đăng nhập')),
          ],
        ),
      ),
    );
  }
}
