import 'package:flutter/material.dart';
import 'package:saicharan_s_application1/presentation/main_page_container1_screen/main_page_container1_screen.dart';
import 'package:saicharan_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String mainPageContainerPage = '/main_page_container_page';

  static const String mainPageContainer1Screen = '/main_page_container1_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    mainPageContainer1Screen: (context) => MainPageContainer1Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
