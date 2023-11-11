import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:saicharan_s_application1/theme/theme_helper.dart';
import 'package:saicharan_s_application1/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'saicharan_s_application1',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.mainPageContainer1Screen,
      routes: AppRoutes.routes,
    );
  }
}
