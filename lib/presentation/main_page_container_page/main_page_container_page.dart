import '../main_page_container_page/widgets/cryptocurrencyinfo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:saicharan_s_application1/core/app_export.dart';
import 'package:saicharan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:saicharan_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:saicharan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:saicharan_s_application1/widgets/custom_outlined_button.dart';
import 'package:saicharan_s_application1/widgets/custom_search_view.dart';


enum CryptoSortOption {
  Price,
  Volume24h,
}


class MainPageContainerPage extends StatelessWidget {
  MainPageContainerPage({Key? key})
      : super(
          key: key,
        );
  final CryptoSortOption _currentSortOption = CryptoSortOption.Price;

  TextEditingController searchController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 26.h,
              vertical: 12.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildEightyFive(context),
                SizedBox(height: 21.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "Cryptocurrency",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "NFT",
                          style: CustomTextStyles.titleLargeBlack900,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                _buildEightyThree(context),
                SizedBox(height: 21.v),
                _buildEightySeven(context),
                SizedBox(height: 13.v),
                _buildCryptoCurrencyInfo(context),
              ],
            ),
          ),
        )
      ),
    );
  }


  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Exchanges".toUpperCase(),
        margin: EdgeInsets.only(left: 26.h),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.fromLTRB(33.h, 12.v, 33.h, 14.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    right: 32.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.amber300,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  AppbarTrailingImage(
                    imagePath: ImageConstant.imgNotification,
                  ),
                  AppbarTrailingImage(
                    imagePath: ImageConstant.imgSettings,
                    margin: EdgeInsets.only(left: 16.h),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }


  Widget _buildEightyFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomSearchView(
              controller: searchController,
              hintText: "Search Cryptocurrency",
            ),
          ),
          CustomOutlinedButton(
            width: 75.0,
            text: "Filter",
            margin: EdgeInsets.only(left: 9.0),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 5.0),
              child: CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 9.0,
                width: 11.0,
              ),
            ),
            onPressed: () => _showFilterOptions(context),


          ),
        ],
      ),
    );
  }

  void _showFilterOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Sort by Price'),
                onTap: () {
                  _applySorting(CryptoSortOption.Price);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Sort by Volume 24h'),
                onTap: () {
                  _applySorting(CryptoSortOption.Volume24h);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }



  void _applySorting(CryptoSortOption sortOption) {
    
  }



  Widget _buildEightyThree(BuildContext context) {
    return SizedBox(
      height: 131.v,
      width: 317.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 26.v,
              ),
              decoration: AppDecoration.fillGreenA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconBitcoin,
                    height: 46.adaptSize,
                    width: 46.adaptSize,
                    margin: EdgeInsets.only(bottom: 32.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 2.v,
                      bottom: 34.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BTC",
                          style: CustomTextStyles.titleMediumBlack90001,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "Bitcoin",
                          style: CustomTextStyles.labelLargeBlack90001,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 34.v,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "55,000 USD",
                          style: CustomTextStyles.titleMediumBlack90001Bold,
                        ),
                        SizedBox(height: 4.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "+2.5%",
                            style: CustomTextStyles.labelLargeGreenA700Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(1.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup80,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorGreenA70040x315,
                    height: 40.v,
                    width: 315.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildEightySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Top Cryptocurrencies",
            style: CustomTextStyles.titleMediumBlack900,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            child: Text(
              "View All",
              style: CustomTextStyles.labelLargeBlack9007f,
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildCryptoCurrencyInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 13.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return CryptocurrencyinfoItemWidget();
        },
      ),
    );
  }
}
