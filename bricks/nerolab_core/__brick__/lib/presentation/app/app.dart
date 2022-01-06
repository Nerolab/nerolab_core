import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/configs/routes/routes.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/configs/themes/custom_theme.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/constants/key_constants.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/di/injection.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/l10n/localizations.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/utils/services/shared_prefs.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/auth/pages/login_page.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/dashboard/pages/dashboard_page.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/onboard/pages/onboarding_page.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final prefs = sl<SharedPrefs>();

  @override
  Widget build(BuildContext context) {
    final isLogin = prefs.isKeyExists(KeyConstants.keyAccessToken);
    final onBoard = prefs.getBool(KeyConstants.keyOnBoard) ?? false;

    final routeObserver = Get.put<RouteObserver>(RouteObserver<PageRoute>());

    String initialRoute() {
      if (onBoard) {
        if (isLogin) {
          return DashboardPage.route;
        } else {
          return LoginPage.route;
        }
      } else {
        return OnBoardingPage.route;
      }
    }

    return GetMaterialApp(
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: localizedLabels.keys.first,
      supportedLocales: localizedLabels.keys.toList(),
      navigatorObservers: [routeObserver],
      initialRoute: initialRoute(),
      getPages: Routes.page.map((page) => page).toList(),
    );
  }
}
