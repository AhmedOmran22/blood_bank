import 'package:blood_bank/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_colors.dart';

class BloodTypeWidget extends StatelessWidget {
  const BloodTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.primaryColor,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            SvgPicture.asset(
              AppAssets.imagesBloodDrop,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
