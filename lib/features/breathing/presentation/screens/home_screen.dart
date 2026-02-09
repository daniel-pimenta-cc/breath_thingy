import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/models/animation_style.dart';
import '../../domain/models/breathing_config.dart';
import '../../animations/base/animation_phase_controller.dart';
import '../providers/animation_style_provider.dart';
import '../providers/breathing_config_provider.dart';
import '../widgets/animation_preview_card.dart';
import '../widgets/duration_picker.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with TickerProviderStateMixin {
  late AnimationPhaseController _previewController;

  int? _inhale;
  int? _hold;
  int? _exhale;

  @override
  void initState() {
    super.initState();
    _previewController = AnimationPhaseController(this);
    _previewController.configure(const BreathingConfig());
  }

  @override
  void dispose() {
    _previewController.dispose();
    super.dispose();
  }

  void _saveConfig(BreathingConfig current) {
    final newConfig = current.copyWith(
      inhaleDuration: _inhale ?? current.inhaleDuration,
      holdDuration: _hold ?? current.holdDuration,
      exhaleDuration: _exhale ?? current.exhaleDuration,
    );
    ref.read(breathingConfigNotifierProvider.notifier).updateConfig(newConfig);
  }

  @override
  Widget build(BuildContext context) {
    final selectedStyle = ref.watch(breathingAnimStyleNotifierProvider);
    final configAsync = ref.watch(breathingConfigNotifierProvider);

    return Scaffold(
      body: SafeArea(
        child: configAsync.when(
          data: (config) {
            final inhale = _inhale ?? config.inhaleDuration;
            final hold = _hold ?? config.holdDuration;
            final exhale = _exhale ?? config.exhaleDuration;
            final totalCycle = inhale + hold + exhale;

            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(20),
                  // Header
                  Text(
                    'Breath Thingy',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const Gap(20),

                  // Animation selection - horizontal row
                  Text(
                    'Animação',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    height: 140,
                    child: Row(
                      children: BreathingAnimStyle.values.map((style) {
                        return Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: style != BreathingAnimStyle.values.last
                                  ? 10
                                  : 0,
                            ),
                            child: AnimationPreviewCard(
                              style: style,
                              isSelected: style == selectedStyle,
                              controller: _previewController,
                              onTap: () {
                                ref
                                    .read(breathingAnimStyleNotifierProvider
                                        .notifier)
                                    .select(style);
                              },
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const Gap(28),

                  // Duration config section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tempos',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      // Cycle total badge
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.softTeal.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Ciclo ${totalCycle}s',
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AppColors.softTeal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(4),

                  // Cycle bar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: SizedBox(
                      height: 6,
                      child: Row(
                        children: [
                          Expanded(
                            flex: inhale,
                            child: Container(color: AppColors.inhaleBlue),
                          ),
                          Expanded(
                            flex: hold,
                            child: Container(color: AppColors.holdAmber),
                          ),
                          Expanded(
                            flex: exhale,
                            child:
                                Container(color: AppColors.exhaleCoralSoft),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(16),

                  DurationPicker(
                    label: 'Inspirar',
                    value: inhale,
                    color: AppColors.inhaleBlue,
                    onChanged: (v) {
                      setState(() => _inhale = v);
                      _saveConfig(config);
                    },
                  ),
                  const Gap(12),
                  DurationPicker(
                    label: 'Segurar',
                    value: hold,
                    color: AppColors.holdAmber,
                    onChanged: (v) {
                      setState(() => _hold = v);
                      _saveConfig(config);
                    },
                  ),
                  const Gap(12),
                  DurationPicker(
                    label: 'Expirar',
                    value: exhale,
                    color: AppColors.exhaleCoralSoft,
                    onChanged: (v) {
                      setState(() => _exhale = v);
                      _saveConfig(config);
                    },
                  ),
                  const Gap(28),

                  // Start Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () => context.push('/breathe'),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.play_arrow_rounded, size: 24),
                          const Gap(8),
                          Text(
                            'Iniciar Exercício',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(24),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (_, _) => Center(
            child: Text(
              'Erro ao carregar configuração',
              style: GoogleFonts.inter(color: AppColors.textSecondary),
            ),
          ),
        ),
      ),
    );
  }
}
