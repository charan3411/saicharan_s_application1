import 'package:flutter/material.dart';
import 'package:saicharan_s_application1/core/app_export.dart';


  class CryptocurrencyinfoItemWidget extends StatelessWidget {
    const CryptocurrencyinfoItemWidget({Key? key})
        : super(
            key: key,
          );

    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 4.h,
          vertical: 2.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgIconEthereum,
              height: 46.adaptSize,
              width: 46.adaptSize,
              margin: EdgeInsets.only(
                top: 5.v,
                bottom: 1.v,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  bottom: 4.v,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6.v),
                          child: Text(
                            "ETH",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorDeepOrangeA400,
                          height: 24.v,
                          width: 63.h,
                          margin: EdgeInsets.only(
                            left: 17.h,
                            bottom: 4.v,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(top: 6.v),
                          child: Text(
                            "3,800 USD",
                            style: CustomTextStyles.titleMedium16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ethereum",
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          "-3.2%",
                          style: CustomTextStyles.labelLargeDeeporangeA400,
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }


//
// class CryptoData {
//   final String iconImagePath;
//   final String graphImagePath;
//   final String symbol;
//   final String name;
//   final String price;
//   final String percentage;
//
//   CryptoData({
//     required this.iconImagePath,
//     required this.graphImagePath,
//     required this.symbol,
//     required this.name,
//     required this.price,
//     required this.percentage,
//   });
// }
//
// class CryptocurrencyinfoItemWidget extends StatelessWidget {
//   final List<CryptoData> cryptoDataList = [
//     CryptoData(
//       iconImagePath: ImageConstant.imgIconEthereum,
//       graphImagePath: ImageConstant.imgVectorDeepOrangeA400,
//       symbol: "ETH",
//       name: "Ethereum",
//       price: "3,800 USD",
//       percentage: "-3.2%",
//     ),
//     CryptoData(
//       iconImagePath: ImageConstant.imgIconEthereum,
//       graphImagePath: ImageConstant.imgVectorDeepOrangeA400,
//       symbol: "ETH",
//       name: "Ethereum",
//       price: "3,800 USD",
//       percentage: "-3.2%",
//     ),
//     CryptoData(
//       iconImagePath: ImageConstant.imgIconEthereum,
//       graphImagePath: ImageConstant.imgVectorDeepOrangeA400,
//       symbol: "ETH",
//       name: "Ethereum",
//       price: "3,800 USD",
//       percentage: "-3.2%",
//     ),
//     CryptoData(
//       iconImagePath: ImageConstant.imgIconEthereum,
//       graphImagePath: ImageConstant.imgVectorDeepOrangeA400,
//       symbol: "ETH",
//       name: "Ethereum",
//       price: "3,800 USD",
//       percentage: "-3.2%",
//     ),
//     CryptoData(
//       iconImagePath: ImageConstant.imgIconEthereum,
//       graphImagePath: ImageConstant.imgVectorDeepOrangeA400,
//       symbol: "ETH",
//       name: "Ethereum",
//       price: "3,800 USD",
//       percentage: "-3.2%",
//     ),
//   ];
//
//   CryptocurrencyinfoItemWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       physics: NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       itemCount: cryptoDataList.length,
//       itemBuilder: (context, index) {
//         final data = cryptoDataList[index];
//         return _buildCryptoItem(data);
//       },
//     );
//   }
//
//   Widget _buildCryptoItem(CryptoData data) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.v),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomImageView(
//             imagePath: data.iconImagePath,
//             height: 24.v,
//             width: 63.h,
//             margin: EdgeInsets.only(top: 5.v, bottom: 1.v),
//           ),
//           CustomImageView(
//             imagePath: data.graphImagePath,
//             height: 24.v,
//             width: 63.h,
//             margin: EdgeInsets.only(left: 17.h, bottom: 4.v),
//           ),
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.only(left: 8.h, bottom: 4.v),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     data.symbol,
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     data.name,
//                     style: TextStyle(fontSize: 14),
//                   ),
//                   Text(
//                     data.price,
//                     style: TextStyle(fontSize: 14),
//                   ),
//                   Text(
//                     data.percentage,
//                     style: TextStyle(fontSize: 14),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }