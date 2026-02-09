import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';

class TimerDisplay extends StatelessWidget {
  const TimerDisplay({
    super.key,
    required this.remaining,
    required this.total,
  });

  final double remaining;
  final double total;

  @override
  Widget build(BuildContext context) {
    final secs = remaining.ceil().clamp(0, total.ceil());

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$secs',
          style: GoogleFonts.poppins(
            fontSize: 64,
            fontWeight: FontWeight.w300,
            color: AppColors.textPrimary.withValues(alpha: 0.9),
            height: 1,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 60,
          child: LinearProgressIndicator(
            value: total > 0 ? (1 - remaining / total).clamp(0.0, 1.0) : 0,
            backgroundColor: AppColors.textMuted.withValues(alpha: 0.2),
            valueColor: AlwaysStoppedAnimation<Color>(
              AppColors.softTeal.withValues(alpha: 0.6),
            ),
            minHeight: 2,
            borderRadius: BorderRadius.circular(1),
          ),
        ),
      ],
    );
  }
}
