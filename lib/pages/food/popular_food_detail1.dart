import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/routes/route_helper1.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column1.dart';
import 'package:food_delivery/widgets/app_icon1.dart';
import 'package:food_delivery/widgets/big_text1.dart';
import 'package:food_delivery/widgets/expandable_text1.dart';
import 'package:food_delivery/widgets/small_text1.dart';
import 'package:get/get.dart';

import '../../controllers/popular_product_controller2.dart';

class PopularFoodDetail1 extends StatelessWidget {
  int pageId;
  PopularFoodDetail1({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product = Get.find<PopularProductController2>().products[pageId];
    // Get.find<PopularProductController2>().products[pageId];
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(AppConstants.BASE_URL +
                          AppConstants.UPLOAD_URL +
                          product.img!),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.toNamed(RouteHelper1.initial);
                    Get.toNamed(RouteHelper1.initial);
                    PageController pageController =
                        PageController(viewportFraction: 0.9, initialPage: pageId);
                        
                  },
                  child: AppIcon1(
                      icon: Icons.arrow_back_ios,
                      iconColor: AppColors.mainBlackColor),
                ),
                AppIcon1(
                    icon: Icons.shopping_cart_outlined,
                    iconColor: AppColors.mainBlackColor),
              ],
            ),
          ),
          Positioned(
            top: Dimensions.popularFoodImgSize - Dimensions.height20,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20))),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height20),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppColumn1(
                      text: product.name!,
                      textSize: Dimensions.font26,
                      textColor: AppColors.mainBlackColor,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText1(text: 'Introduce'),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                      padding: EdgeInsets.only(bottom: Dimensions.height20),
                      child: ExpandableTextWidget1(text: product.description!),
                    )))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 110,
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.circular(Dimensions.radius30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height10,
                  bottom: Dimensions.height10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius30,
                    ),
                    color: Colors.white),
                child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20,
                      bottom: Dimensions.height20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.remove,
                        color: AppColors.mainBlackColor,
                      ),
                      SizedBox(
                        width: Dimensions.width10 / 2,
                      ),
                      BigText1(
                        text: '0',
                        size: Dimensions.font20,
                      ),
                      SizedBox(
                        width: Dimensions.width10 / 2,
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.mainBlackColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height10,
                  bottom: Dimensions.height10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius30,
                    ),
                    color: AppColors.mainColor),
                child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20,
                      bottom: Dimensions.height20),
                  child: BigText1(
                    text: '\$12 | Add to cart',
                    color: Colors.white,
                    size: Dimensions.font20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:food_delivery/utils/colors.dart';
// import 'package:food_delivery/utils/dimensions.dart';
// import 'package:food_delivery/widgets/app_column1.dart';
// import 'package:food_delivery/widgets/app_icon1.dart';
// import 'package:food_delivery/widgets/big_text1.dart';
// import 'package:food_delivery/widgets/expandable_text1.dart';
// import 'package:food_delivery/widgets/small_text1.dart';
// import 'package:get/get.dart';

// import '../../controllers/popular_product_controller2.dart';

// class PopularFoodDetail1 extends StatefulWidget {
//   int pageId;
//   PopularFoodDetail1({Key? key, required this.pageId}) : super(key: key);

//   @override
//   State<PopularFoodDetail1> createState() => _PopularFoodDetail1State();
// }

// class _PopularFoodDetail1State extends State<PopularFoodDetail1> {
//   @override
//   Widget build(BuildContext context) {

//     var product = Get.find<PopularProductController2>().products[pageId];
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             left: 0,
//             right: 0,
//             child: Container(
//               height: Dimensions.popularFoodImgSize,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage('assets/image/food0.png'),
//                       fit: BoxFit.cover)),
//             ),
//           ),
//           Positioned(
//             left: Dimensions.width20,
//             right: Dimensions.width20,
//             top: Dimensions.height45,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AppIcon1(
//                     icon: Icons.arrow_back_ios,
//                     iconColor: AppColors.mainBlackColor),
//                 AppIcon1(
//                     icon: Icons.shopping_cart_outlined,
//                     iconColor: AppColors.mainBlackColor),
//               ],
//             ),
//           ),
//           Positioned(
//             top: Dimensions.popularFoodImgSize - Dimensions.height20,
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(Dimensions.radius20),
//                       topRight: Radius.circular(Dimensions.radius20))),
//               child: Container(
//                 padding: EdgeInsets.only(top: Dimensions.height20),
//                 margin: EdgeInsets.only(
//                     left: Dimensions.width20, right: Dimensions.width20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     AppColumn1(
//                       text: 'Delicious Food Menu',
//                       textSize: Dimensions.font26,
//                       textColor: AppColors.mainBlackColor,
//                     ),
//                     SizedBox(
//                       height: Dimensions.height20,
//                     ),
//                     BigText1(text: 'Introduce'),
//                     SizedBox(
//                       height: Dimensions.height20,
//                     ),
//                     Expanded(
//                         child: SingleChildScrollView(
//                             child: Container(
//                       padding: EdgeInsets.only(bottom: Dimensions.height20),
//                       child: ExpandableTextWidget1(
//                           text:
//                               'Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot Nurbolot '),
//                     )))
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//       bottomNavigationBar: Container(
//         height: 110,
//         decoration: BoxDecoration(
//             color: AppColors.buttonBackgroundColor,
//             borderRadius: BorderRadius.circular(Dimensions.radius30)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(
//                   left: Dimensions.width20,
//                   right: Dimensions.width20,
//                   top: Dimensions.height10,
//                   bottom: Dimensions.height10),
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(
//                       Dimensions.radius30,
//                     ),
//                     color: Colors.white),
//                 child: Container(
//                   padding: EdgeInsets.only(
//                       left: Dimensions.width20,
//                       right: Dimensions.width20,
//                       top: Dimensions.height20,
//                       bottom: Dimensions.height20),
//                   child: Row(
//                     children: [
//                       Icon(
//                         Icons.remove,
//                         color: AppColors.mainBlackColor,
//                       ),
//                       SizedBox(
//                         width: Dimensions.width10 / 2,
//                       ),
//                       BigText1(
//                         text: '0',
//                         size: Dimensions.font20,
//                       ),
//                       SizedBox(
//                         width: Dimensions.width10 / 2,
//                       ),
//                       Icon(
//                         Icons.add,
//                         color: AppColors.mainBlackColor,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                   left: Dimensions.width20,
//                   right: Dimensions.width20,
//                   top: Dimensions.height10,
//                   bottom: Dimensions.height10),
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(
//                       Dimensions.radius30,
//                     ),
//                     color: AppColors.mainColor),
//                 child: Container(
//                   padding: EdgeInsets.only(
//                       left: Dimensions.width20,
//                       right: Dimensions.width20,
//                       top: Dimensions.height20,
//                       bottom: Dimensions.height20),
//                   child: BigText1(
//                     text: '\$12 | Add to cart',
//                     color: Colors.white,
//                     size: Dimensions.font20,
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
