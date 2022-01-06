import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/auth/pages/login_page.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/dashboard/pages/dashboard_page.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/onboard/pages/onboarding_page.dart';
import 'package:get/route_manager.dart';

class Routes {
  static List<GetPage> page = <GetPage>[
    GetPage<void>(
      name: OnBoardingPage.route,
      page: () => const OnBoardingPage(),
    ),
    GetPage<void>(
      name: DashboardPage.route,
      page: () => const DashboardPage(),
    ),
    GetPage<void>(
      name: LoginPage.route,
      page: () => LoginPage(),
    ),
  ];
}
