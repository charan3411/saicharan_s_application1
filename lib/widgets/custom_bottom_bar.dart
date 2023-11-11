import 'package:flutter/material.dart';
import 'package:saicharan_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHop,
      activeIcon: ImageConstant.imgNavHop,
      title: "€-hop",
      type: BottomBarEnum.Hop,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavExchange,
      activeIcon: ImageConstant.imgNavExchange,
      title: "Exchange",
      type: BottomBarEnum.Exchange,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMetaverse1,
      activeIcon: ImageConstant.imgMetaverse1,
      title: "€-hop",
      type: BottomBarEnum.Hop,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavLaunchpads,
      activeIcon: ImageConstant.imgNavLaunchpads,
      title: "Launchpads",
      type: BottomBarEnum.Launchpads,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavWallet,
      activeIcon: ImageConstant.imgNavWallet,
      title: "Wallet",
      type: BottomBarEnum.Wallet,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71.v,
      decoration: BoxDecoration(
        color: appTheme.black900,
        borderRadius: BorderRadius.circular(
          25.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          if (bottomMenuList[index].isCircle) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 54.v,
                width: 53.h,
              ),
              label: '',
            );
          }
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  color: appTheme.whiteA700,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelMediumWhiteA700.copyWith(
                      color: appTheme.whiteA700,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 20.v,
                  width: 19.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.labelMedium!.copyWith(
                      color: appTheme.whiteA700.withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Hop,
  Exchange,
  Launchpads,
  Wallet,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isCircle = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
