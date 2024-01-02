import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_struct/config/theme/app_theme.dart';
import 'package:flutter_project_struct/core/utils/app_strings.dart';
import 'package:flutter_project_struct/core/utils/local_strings.dart';
import 'package:flutter_project_struct/feature/splash/presentation/cubit/splash_cubit.dart';
import 'package:get/get.dart';
import 'config/routes/app_routes.dart';
import 'injection_container.dart' as di;
import 'widgets/message_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => di.sl<SplashCubit>()),
        ],
        child: MediaQuery(
            data:  MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: GetMaterialApp(
              translations: LocalStrings(),
              locale: const Locale('en', 'US'),
              fallbackLocale: const Locale('en', 'US'),
              theme: appTheme(),
              debugShowCheckedModeBanner: false,
              title: AppStrings.appName,
              onGenerateRoute: AppRoutes.onGenerateRoute,
              scaffoldMessengerKey: MessageWidget.scaffoldMessengerKey,
            )
        )
    );
  }
}