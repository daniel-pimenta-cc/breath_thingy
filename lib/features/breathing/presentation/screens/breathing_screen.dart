import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/models/breathing_config.dart';
import '../../domain/models/breathing_session.dart';
import '../../animations/base/animation_phase_controller.dart';
import '../../animations/widgets/breathing_animation_switcher.dart';
import '../providers/animation_style_provider.dart';
import '../providers/breathing_config_provider.dart';
import '../providers/breathing_session_provider.dart';
import '../widgets/breathing_controls.dart';
import '../widgets/phase_indicator.dart';
import '../widgets/timer_display.dart';

class BreathingScreen extends ConsumerStatefulWidget {
  const BreathingScreen({super.key});

  @override
  ConsumerState<BreathingScreen> createState() => _BreathingScreenState();
}

class _BreathingScreenState extends ConsumerState<BreathingScreen>
    with TickerProviderStateMixin {
  late AnimationPhaseController _animController;

  @override
  void initState() {
    super.initState();
    _animController = AnimationPhaseController(this);

    // Immersive mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  void dispose() {
    _animController.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  void _configureAndStart(BreathingConfig config) {
    _animController.configure(config);
    _animController.startCycle();
    ref.read(breathingSessionNotifierProvider.notifier).start();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final sessionState = ref.watch(breathingSessionNotifierProvider);
    final selectedStyle = ref.watch(breathingAnimStyleNotifierProvider);
    final configAsync = ref.watch(breathingConfigNotifierProvider);

    // Configure controller when config is available (on first build idle state)
    if (sessionState is BreathingSessionIdle) {
      configAsync.whenData((config) {
        _animController.configure(config);
      });
    }

    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          // Full-screen animation
          Positioned.fill(
            child: BreathingAnimationSwitcher(
              style: selectedStyle,
              controller: _animController,
            ),
          ),

          // Overlay controls
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  // Top bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            ref
                                .read(breathingSessionNotifierProvider.notifier)
                                .reset();
                            _animController.stop();
                            context.pop();
                          },
                          icon: const Icon(Icons.arrow_back_rounded),
                          color: AppColors.textPrimary.withValues(alpha: 0.7),
                        ),
                        if (sessionState is BreathingSessionRunning)
                          Text(
                            l10n.cycleCount(sessionState.cycle),
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        const SizedBox(width: 48),
                      ],
                    ),
                  ),

                  const Spacer(),

                  // Phase indicator
                  _buildPhaseSection(sessionState, l10n),

                  const Gap(16),

                  // Timer
                  _buildTimerSection(sessionState),

                  const Gap(40),

                  // Controls
                  configAsync.when(
                    data: (config) => BreathingControls(
                      sessionState: sessionState,
                      onStart: () => _configureAndStart(config),
                      onPause: () {
                        ref
                            .read(breathingSessionNotifierProvider.notifier)
                            .pause();
                        _animController.pause();
                      },
                      onResume: () {
                        ref
                            .read(breathingSessionNotifierProvider.notifier)
                            .resume();
                        _animController.resume();
                      },
                      onStop: () {
                        ref
                            .read(breathingSessionNotifierProvider.notifier)
                            .stop();
                        _animController.stop();
                      },
                      onReset: () {
                        ref
                            .read(breathingSessionNotifierProvider.notifier)
                            .reset();
                        _animController.stop();
                      },
                    ),
                    loading: () => const SizedBox.shrink(),
                    error: (_, _) => const SizedBox.shrink(),
                  ),

                  const Gap(48),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhaseSection(BreathingSessionState state, AppLocalizations l10n) {
    return switch (state) {
      BreathingSessionRunning(phase: final phase) => PhaseIndicator(
        phase: phase,
      ),
      BreathingSessionPaused(phase: final phase) => PhaseIndicator(
        phase: phase,
      ),
      BreathingSessionCompleted(totalCycles: final cycles) => Text(
        l10n.completedCycles(cycles),
        style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.softTeal,
        ),
      ),
      BreathingSessionIdle() => Text(
        l10n.readyToStart,
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: AppColors.textSecondary,
        ),
      ),
    };
  }

  Widget _buildTimerSection(BreathingSessionState state) {
    return switch (state) {
      BreathingSessionRunning(
        elapsed: final elapsed,
        phaseDuration: final duration,
      ) =>
        TimerDisplay(
          remaining: (duration - elapsed).clamp(0, duration),
          total: duration,
        ),
      BreathingSessionPaused(
        elapsed: final elapsed,
        phaseDuration: final duration,
      ) =>
        TimerDisplay(
          remaining: (duration - elapsed).clamp(0, duration),
          total: duration,
        ),
      _ => const SizedBox(height: 80),
    };
  }
}
