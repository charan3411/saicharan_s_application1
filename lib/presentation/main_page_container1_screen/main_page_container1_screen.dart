import 'package:flutter/material.dart';
import 'package:saicharan_s_application1/core/app_export.dart';
import 'package:saicharan_s_application1/presentation/main_page_container_page/main_page_container_page.dart';
import 'package:saicharan_s_application1/widgets/custom_bottom_bar.dart';


class MainPageContainer1Screen extends StatelessWidget {
  MainPageContainer1Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.mainPageContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.h),
                child: _buildBottomBar(context))));
  }


  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }


  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Hop:
        return AppRoutes.mainPageContainerPage;
      case BottomBarEnum.Exchange:
        return "/";
      case BottomBarEnum.Launchpads:
        return "/";
      case BottomBarEnum.Wallet:
        return "/";
      default:
        return "/";
    }
  }


  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPageContainerPage:
        return MainPageContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
