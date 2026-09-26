/// Base URL is injected at build/run time via `--dart-define=API_BASE_URL=...`,
/// never hard-coded. `10.0.2.2` is the Android-emulator alias for the host
/// machine's localhost.
class ApiEndpoints {
  static const baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://10.0.2.2:3000/api/v1',
  );

  static const banners = '/banners';
  static const categories = '/categories';
  static const products = '/products';
  static const cart = '/cart';
  static const cartItems = '/cart/items';
  static const cartCount = '/cart/count';
  static const wishlist = '/wishlist';
  static const wishlistItems = '/wishlist/items';
  static const wishlistCount = '/wishlist/count';
  static const recommendations = '/recommendations';
  static const behaviors = '/behaviors';
  static const authLogin = '/auth/login';
  static const authRefresh = '/auth/refresh';
}
