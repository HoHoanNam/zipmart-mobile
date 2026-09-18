# Zipmart Mobile — Project Context & Coding Conventions

## Project Context

This repo is 1 of 5 sibling repos in the Zipmart system (`zipmart-frontend-web`,
`zipmart-admin-web`, `zipmart-mobile`, `zipmart-backend-nest`, `zipmart-backend-spring`).
Mobile talks ONLY to `zipmart-backend-nest` (the BFF/API Gateway) — never directly
to `zipmart-backend-spring` (the internal recommendation engine). Auth is Bearer
JWT in the `Authorization` header for all requests (no cookies). Backend API is
versioned at `/api/v1/...`.

Ports (local dev): `frontend-web:4200`, `admin-web:4300`, `backend-nest:3000`,
`backend-spring:8080`. Mobile has no fixed port — base URL is injected via
`--dart-define=API_BASE_URL=...`.

## Flutter Mobile Coding Conventions

- Feature-first structure under `lib/features/<feature>/` — each feature owns its
  UI + provider + model. No global MVC-style layering.
- State management: **Riverpod only** (`AsyncNotifier`/`StateNotifier`/`Provider`).
  No raw `setState` for business state, no Bloc/Provider package mixing.
- All HTTP calls go through `lib/core/network/dio_client.dart`
  (`dioClientProvider`). No feature file instantiates `Dio()` directly.
- JWT tokens are read/written only via `lib/core/storage/secure_storage.dart`
  (`SecureStorageService`, backed by `flutter_secure_storage` /
  Keychain-Keystore). Never `SharedPreferences` for tokens, and never held
  long-term in provider state.
- Routing via `go_router`, configured in `lib/core/router/app_router.dart`
  (`appRouterProvider`). Auth redirect logic belongs here once the auth
  feature is built.
- Models/DTOs: `freezed` + `json_serializable`, codegen via `build_runner`
  (`dart run build_runner build --delete-conflicting-outputs`). Currently
  hand-authored (no backend OpenAPI spec exists yet); structured to be
  swappable for spec-generated models later without an architecture change.
- API base URL is injected via `--dart-define=API_BASE_URL=...` at build/run
  time — never hard-coded (see `lib/core/network/api_endpoints.dart`).

## Current State

Skeleton bootstrap only — no real network calls wired up yet (backend repos
don't exist). `rec_provider.dart` and other feature providers return stub/empty
data. Replace stubs with real API calls once `zipmart-backend-nest` exists.
