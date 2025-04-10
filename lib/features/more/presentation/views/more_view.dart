import 'package:blood_bank/features/more/presentation/views/widgets/more_view_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "More".tr(),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: const MoreViewBody(),
    );
  }
}
