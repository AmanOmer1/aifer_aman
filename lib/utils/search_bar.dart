import 'package:flutter/material.dart';
import 'package:images/theme/app_theme.dart';

class SerachBar extends StatelessWidget {
  const SerachBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.cardSurfaceColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppTheme.secondaryAccentColor),
        ),
        child: TextField(
          style: const TextStyle(
            color: AppTheme.textPrimaryDarkColor,
            fontSize: 15,
          ),
          decoration: const InputDecoration(
            hintText: 'Search by ...',
            hintStyle: TextStyle(
              color: AppTheme.textSecondaryGreyColor,
              fontSize: 15,
            ),
            prefixIcon: Icon(
              Icons.search_rounded,
              color: AppTheme.primaryBlueColor,
              size: 20,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
          ),
          onChanged: (_) {},
        ),
      ),
    );
  }
}
