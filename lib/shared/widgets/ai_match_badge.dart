import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_typography.dart';

/// "✨ Độ phù hợp 98%" badge on recommendation cards — mirrors web's
/// AI-match badge spec (docs/PROJECT-DESIGN-TOKENS.md components section).
class AiMatchBadge extends StatelessWidget {
  const AiMatchBadge({super.key, required this.score});

  /// 0.0–1.0 match score from the recommendations API.
  final double score;

  @override
  Widget build(BuildContext context) {
    final percent = (score * 100).round();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.neutral100,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: AppColors.primaryLight),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.auto_awesome, size: 12, color: AppColors.primaryDark),
          const SizedBox(width: 4),
          Text('Độ phù hợp $percent%', style: AppTypography.captionBold),
        ],
      ),
    );
  }
}
