import 'package:blood_bank/features/settings/presentation/views/widgets/settings_view_body.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: const SettingsViewBody(),
    );
  }
}
