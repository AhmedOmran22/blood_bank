import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/routes/app_routes.dart';
import 'core/routes/on_generate_route.dart';
import 'core/theme_cubit/theme_cubit.dart';
import 'core/theme_cubit/theme_cubit_state.dart';
import 'core/themes/dark_theme.dart';
import 'core/themes/light_theme.dart';

class BloodBank extends StatelessWidget {
  const BloodBank({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit()..getCurrentTheme(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<ThemeCubit, ThemeCubitState>(
            builder: (context, state) {
              return MaterialApp(
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(textScaler: const TextScaler.linear(1.0)),
                    child: child!,
                  );
                },
                debugShowCheckedModeBanner: false,
                theme: state is LightThemeState ? lightTheme : darkTheme,
                onGenerateRoute: onGenerateRoute,
                initialRoute: AppRoutes.onBoarding,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
              );
            },
          );
        },
      ),
    );
  }
}
