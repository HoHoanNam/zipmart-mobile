/// Base URL is injected at build/run time via `--dart-define=API_BASE_URL=...`,
/// never hard-coded. `10.0.2.2` is the Android-emulator alias for the host
/// machine's localhost — placeholder only, `zipmart-backend-nest` doesn't
/// exist yet.
class ApiEndpoints {
  static const baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://10.0.2.2:3000/api/v1',
  );

  static const recommendations = '/recommendations';
  static const behaviors = '/behaviors';
  static const authLogin = '/auth/login';
  static const authRefresh = '/auth/refresh';
}
