import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/constants/key_constants.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/di/injection.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/utils/services/shared_prefs.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/app/app.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/auth/pages/login_page.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/dashboard/pages/dashboard_page.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/onboard/pages/onboarding_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../helpers/helpers.dart';

void main() {
  widgetSetup();

  group('App', () {
    testWidgets('App initial route to OnBoardingPage', (tester) async {
      await tester.pumpWidget(App());

      expect(find.byType(OnBoardingPage), findsOneWidget);
    });

    testWidgets('App initial route to LoginPage', (tester) async {
      await tester.pumpWidget(App());

      expect(find.byType(LoginPage), findsOneWidget);
    });

    testWidgets('App initial route to DashboardPage', (tester) async {
      final prefs = sl<SharedPrefs>();
      await prefs.putString(KeyConstants.keyAccessToken, 'token');
      await prefs.putBool(KeyConstants.keyOnBoard, true);

      await mockNetworkImagesFor(() => tester.pumpWidget(App()));

      expect(find.byType(DashboardPage), findsOneWidget);
    });
  });
}
