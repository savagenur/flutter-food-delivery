import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                    top: Dimensions.height10 / 2, bottom: Dimensions.height10),
                child: Center(
                    child: BigText(
                  text: "Chinese Side",
                  size: Dimensions.font26,
                )),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      right: Dimensions.width20,
                      left: Dimensions.width20,
                      bottom: Dimensions.height30),
                  child: ExpandableTextWidget(
                      text:
                          "Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghuChicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I rt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I par boiled I   Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghuChicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I rt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I Chicken marinated in a spiced youghurt is placed in a large pot, then layered with fried onions (cheaky easy sub below!), fresh coriander/cilantro, par boiled I par boiled I  "),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: Dimensions.height10,
                bottom: Dimensions.height10,
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                ),
                BigText(text: '\$12.88' + ' X ' + '0', color: AppColors.mainBlackColor, size: Dimensions.font26,),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                ),
              ],
            ),
          ),
          Container(
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
              child: Icon(Icons.favorite,color: AppColors.mainColor,),
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
      )
        ],
      ),
    );
  }
}
