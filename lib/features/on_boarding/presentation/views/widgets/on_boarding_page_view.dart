import 'package:flutter/material.dart';

import '../../../data/models/on_boarding_model.dart';
import 'on_boarding_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onBoardingModels.length,
      controller: controller,
      itemBuilder: (BuildContext context, int index) {
        return OnBoardingPageViewItem(
          onBoardingModel: onBoardingModels[index],
        );
      },
    );
  }
}
