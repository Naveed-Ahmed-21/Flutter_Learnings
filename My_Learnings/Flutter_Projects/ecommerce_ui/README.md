# Ecommerce UI

A Flutter ecommerce UI demo for browsing sneakers and managing a simple shopping cart. The app uses a clean Nike-inspired layout, `provider` for local state management, and a bottom navigation flow between the shop and cart screens.

## Preview

This project includes:

- An intro screen with branding and a "Shop Now" call to action
- A shop screen with featured shoes in a horizontal product list
- A cart screen backed by shared app state
- Add-to-cart and remove-from-cart interactions
- Local image assets for product and brand visuals

## Tech Stack
- Flutter
- Dart
- `provider`
- `google_nav_bar`

## Project Structure

```text
lib/
  components/
    bottom_nav_bar.dart
    cart_items.dart
    shoe_tile.dart
  models/
    cart.dart
    shoe.dart
  pages/
    cart_page.dart
    home_page.dart
    into_page.dart
    shop_page.dart
  assets/images/
  main.dart
```

## State Management

The app uses `ChangeNotifier` with `provider`.

- `Cart` stores the available shoe list
- `Cart` also stores the user's selected cart items
- UI widgets listen for updates through `Consumer<Cart>`

## Getting Started

### Prerequisites

- Flutter SDK installed
- Dart SDK installed with Flutter
- Android Studio, VS Code, or another Flutter-compatible IDE

The project was checked locally with:

- Flutter `3.41.6`
- Dart `3.11.4`

### Installation

```bash
flutter pub get
```

### Run the App

```bash
flutter run
```

### Build Release

```bash
flutter build apk
```

For other targets, you can also use commands such as:

```bash
flutter build ios
flutter build web
flutter build windows
```

## Assets

Product and logo images are stored in:

```text
lib/assets/images/
```

Assets are registered in `pubspec.yaml`.

## Notes

- The package name in `pubspec.yaml` is currently `todo_app2`, even though this project is an ecommerce UI.
- The current test file is still the default Flutter sample test and does not reflect this app's real behavior yet.

## Future Improvements

- Add product details pages
- Add quantity management in the cart
- Add search and category filtering
- Persist cart data locally
- Replace placeholder actions in the drawer
- Add real widget and integration tests

## License

This project is for learning and personal practice.
