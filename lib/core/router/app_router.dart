import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/account/account_screen.dart';
import '../../features/auth/login_screen.dart';
import '../../features/cart/cart_screen.dart';
import '../../features/categories/categories_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/products/product_detail_screen.dart';
import '../../features/products/products_list_screen.dart';
import '../../features/wishlist/wishlist_screen.dart';
import '../navigation/main_shell.dart';

/// Single GoRouter for the app. Auth redirect logic (guarding routes that
/// need a logged-in user) is added here once the auth feature lands.
///
/// The 4 bottom-nav destinations (Trang chủ/Danh mục/Giỏ hàng/Tài khoản) are
/// `StatefulShellRoute` branches so each tab keeps its own navigation stack
/// and scroll position. Destinations Home links to but that aren't tabs
/// (product list/detail, wishlist, login) are top-level routes pushed over
/// the shell, so they render full-screen without the bottom bar.
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => MainShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(routes: [GoRoute(path: '/', builder: (context, state) => const HomeScreen())]),
          StatefulShellBranch(
            routes: [GoRoute(path: '/categories', builder: (context, state) => const CategoriesScreen())],
          ),
          StatefulShellBranch(routes: [GoRoute(path: '/cart', builder: (context, state) => const CartScreen())]),
          StatefulShellBranch(
            routes: [GoRoute(path: '/account', builder: (context, state) => const AccountScreen())],
          ),
        ],
      ),
      GoRoute(path: '/products', builder: (context, state) => const ProductsListScreen()),
      GoRoute(
        path: '/products/:id',
        builder: (context, state) => ProductDetailScreen(productId: state.pathParameters['id']!),
      ),
      GoRoute(path: '/wishlist', builder: (context, state) => const WishlistScreen()),
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    ],
  );
});
