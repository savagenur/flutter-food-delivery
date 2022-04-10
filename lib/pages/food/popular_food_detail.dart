import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/expandable_text.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/image/food0.png'),
                fit: BoxFit.cover,
              )),
            ),
          ),
          // icon widgets
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - Dimensions.radius20,
            child: Container(
              // height: 300,
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: 'Introduce'),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghuChicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I rt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I par boiled I  "),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height30,
            bottom: Dimensions.height30),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  right: Dimensions.width20,
                  left: Dimensions.width20,
                  top: Dimensions.height20,
                  bottom: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                    size: Dimensions.iconSize24,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                    size: Dimensions.iconSize24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  right: Dimensions.width20,
                  left: Dimensions.width20,
                  top: Dimensions.height20,
                  bottom: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
              child: BigText(
                text: "\$0.08 | Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
