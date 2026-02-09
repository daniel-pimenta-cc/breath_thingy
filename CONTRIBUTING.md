# Contributing to Breath Thingy

Thanks for your interest in contributing! This document will help you get set up.

## Prerequisites

- [Flutter](https://docs.flutter.dev/get-started/install) 3.38+ (stable channel)
- Dart SDK 3.10+
- An editor with Flutter support (VS Code, Android Studio, etc.)

## Setup

```bash
# Clone your fork
git clone https://github.com/<your-username>/breath_thingy.git
cd breath_thingy

# Install dependencies
flutter pub get

# Generate Freezed/Riverpod code
dart run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

## Development Workflow

### Code Generation

This project uses [Freezed](https://pub.dev/packages/freezed) for models and [Riverpod Generator](https://pub.dev/packages/riverpod_generator) for providers. After changing any file that uses `@freezed` or `@riverpod` annotations, regenerate:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Or run it in watch mode while developing:

```bash
dart run build_runner watch --delete-conflicting-outputs
```

### Running Tests

```bash
flutter test
```

### Linting and Formatting

```bash
# Check for lint issues
flutter analyze

# Format code (Dart standard: 80 chars)
dart format .
```

The CI pipeline checks all three of these on every PR.

## Adding a New Animation

The architecture makes it straightforward to add new breathing animations:

1. **Create a painter** in `lib/features/breathing/animations/painters/` extending `BreathingAnimationPainter`. Your painter receives `inhaleProgress`, `holdProgress`, and `exhaleProgress` (0.0 to 1.0) and a `currentPhase`.

2. **Create a widget** in `lib/features/breathing/animations/widgets/` extending `BreathingAnimation`. This wires the painter to the `AnimationPhaseController`.

3. **Add an entry** to the `BreathingAnimStyle` enum in `lib/features/breathing/presentation/providers/animation_style_provider.dart`.

4. **Add the case** to `BreathingAnimationSwitcher` in `lib/features/breathing/animations/widgets/breathing_animation_switcher.dart`.

Look at the existing animations (polygon morph, particle convergence, ripple rings) for reference.

## Project Conventions

- **Architecture**: Clean architecture with feature-based organization
- **State management**: Riverpod with codegen (`@riverpod` annotations)
- **Models**: Freezed for immutable models with union types
- **Navigation**: GoRouter
- **Formatting**: Dart standard (`dart format`)
- **Language**: Code in English, UI strings currently in Portuguese (localization coming soon)

## Submitting a PR

1. Fork the repo and create a branch from `main`
2. Make your changes
3. Ensure `flutter analyze` passes with no issues
4. Ensure `flutter test` passes
5. Ensure `dart format --set-exit-if-changed .` passes
6. Open a PR with a clear description of what you changed and why
