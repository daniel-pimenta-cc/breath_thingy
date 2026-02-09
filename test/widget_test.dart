import 'package:breath_thingy/features/breathing/domain/models/breathing_config.dart';
import 'package:breath_thingy/features/breathing/presentation/providers/breathing_config_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:breath_thingy/app.dart';

void main() {
  testWidgets('App starts and shows Breath Thingy title', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          breathingConfigNotifierProvider.overrideWith(
            () => _FakeConfigNotifier(),
          ),
        ],
        child: const BreathThingyApp(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Breath Thingy'), findsOneWidget);
  });
}

class _FakeConfigNotifier extends BreathingConfigNotifier {
  @override
  Future<BreathingConfig> build() async {
    return const BreathingConfig();
  }
}
