# Recipe Discovery App

> A polished Flutter mobile app for discovering recipes, narrowing them by meal type, searching by name, and keeping a personal session across app launches.

![Flutter](https://img.shields.io/badge/Flutter-3.10%2B-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.10.3%2B-0175C2?logo=dart&logoColor=white)
![Platforms](https://img.shields.io/badge/Platforms-iOS%20%7C%20Android-34A853)

## At a glance

This project is a recipe exploration experience built with Flutter. It starts with a welcoming onboarding flow, lets a user sign in, and then provides a focused way to browse recipes, search for something specific, and view cooking details.

> [!IMPORTANT]
> Recipe, user, and cart data are provided by the public [DummyJSON](https://dummyjson.com/) API. The app is ideal as a portfolio, learning, or UI-integration project; it is not connected to a production recipe service.

## What users can do

| Experience | What it means |
| --- | --- |
| Welcome & sign in | Enter through a friendly onboarding screen, then sign in with a valid DummyJSON account. |
| Stay signed in | The access token, refresh token, and user profile are stored securely, so a returning user goes directly to the app. |
| Discover recipes | Browse featured and popular recipe collections on the home screen. |
| Filter by meal type | Quickly explore breakfast, lunch, and dinner options. |
| Search | Find recipes by a search term and browse the matching results. |
| Read the recipe | Open a recipe to see its image, preparation time, calories, ingredients, and instructions. |
| View an account | See the signed-in user’s details and cart products in the profile area. |

> [!TIP]
> The lower navigation provides Home, Search, Notifications, and Profile destinations. Notifications and the center action are currently visual placeholders, while Home, Search, and Profile are functional.

## App flow

```text
Onboarding
    ↓
Login ──→ Secure session saved
    ↓
Home ──→ Filter recipes ──→ Recipe details
  │
  ├── Search recipes
  └── Profile & cart
```

## Built with

- **Flutter** for a single codebase that runs on iOS and Android.
- **Provider** and `ChangeNotifier` for screen state and loading/error feedback.
- **GetIt** and **Injectable** for dependency injection.
- **Dio** and **Retrofit** for HTTP communication with the API.
- **Freezed** and **json_serializable** for immutable models and JSON conversion.
- **GoRouter** for declarative navigation.
- **flutter_secure_storage** for secure token and cached-user storage.
- **flutter_screenutil** for responsive sizing from the 375 × 812 design reference.

## Architecture

The app follows a feature-first, layered structure. Each feature keeps UI concerns separate from business rules and remote-data details.

```text
lib/
├── core/                    # Routing, networking, storage, shared UI, theme resources
├── features/
│   ├── auth/                # Login, session persistence, user data
│   ├── onboarding/          # First-run experience
│   ├── home/                # Recipe lists, search, and meal-type filters
│   ├── recipeDetails/       # Ingredients and cooking instructions
│   ├── cart/                # User-cart retrieval
│   ├── profile/             # User and cart presentation
│   └── search/              # Search-focused screen
└── main.dart                # App startup and restored-session routing
```

Within data-driven features, responsibilities are organized as:

```text
Presentation → Controller → Use Case → Repository → Data Source → API
```

This keeps widgets focused on presentation and makes the data flow easier to test or replace later.

## API integration

The API base URL is `https://dummyjson.com`.

| Purpose | Endpoint |
| --- | --- |
| Authenticate | `POST /auth/login` |
| Refresh session | `POST /auth/refresh` |
| Fetch recipes | `GET /recipes` |
| Filter by meal type | `GET /recipes/meal-type/{meal-type}` |
| Search recipes | `GET /recipes/search?q={query}` |
| Fetch a user cart | `GET /carts/user/{userId}` |

## Useful commands

```bash
# Check static analysis
flutter analyze

# Run the automated test suite
flutter test

# Regenerate Retrofit, Freezed, JSON, and Injectable generated files after model or DI changes
dart run build_runner build --delete-conflicting-outputs
```

## Current scope

The interface includes a few intentional visual entry points that are not wired to a completed workflow yet: social sign-in, account creation, password recovery, favorites, notifications, settings, and the center navigation action. They are natural next steps if you continue the project.

---

Built with Flutter and powered by DummyJSON.
