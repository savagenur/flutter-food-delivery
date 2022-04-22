import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/recommended_product_controller1.dart';
import 'package:food_delivery/routes/route_helper1.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon1.dart';
import 'package:food_delivery/widgets/big_text1.dart';
import 'package:food_delivery/widgets/expandable_text1.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail1 extends StatelessWidget {
  int pageId;
  RecommendedFoodDetail1({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController1>().recommendedProductList[pageId];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 120,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper1.initial);
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
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10 / 2,
                      bottom: Dimensions.height10),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius20),
                          topRight: Radius.circular(Dimensions.radius20))),
                  child: Center(
                      child: BigText1(
                    text: product.name!,
                    size: Dimensions.font26,
                  ))),
            ),
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                AppConstants.BASE_URL+AppConstants.UPLOAD_URL+product.img!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height20),
                child: ExpandableTextWidget1(
                    text:
                        product.description!)),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 3.5,
              right: Dimensions.width20 * 3.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon1(
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText1(
                  text: '\$8 X 0',
                  size: Dimensions.font26,
                ),
                AppIcon1(
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 130,
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.circular(Dimensions.radius30)),
            child: Container(
              margin: EdgeInsets.only(
                  right: Dimensions.width20, left: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        top: Dimensions.height20,
                        bottom: Dimensions.height20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20)),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                      size: Dimensions.iconSize24,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        top: Dimensions.height20,
                        bottom: Dimensions.height20),
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20)),
                    child: BigText1(
                      text: '\$0.8 | Add to cart',
                      color: Colors.white,
                      size: Dimensions.font26,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
