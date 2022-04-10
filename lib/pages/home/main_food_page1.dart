import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:food_delivery/home/food_page_body.dart';
// import 'package:food_delivery/home/food_page_body1.dart';
import 'package:food_delivery/pages/home/food_page_body1.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text1.dart';
import 'package:food_delivery/widgets/small_text1.dart';

class MainFoodPage1 extends StatefulWidget {
  const MainFoodPage1({Key? key}) : super(key: key);

  @override
  State<MainFoodPage1> createState() => _MainFoodPage1State();
}

class _MainFoodPage1State extends State<MainFoodPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // color: Colors.red,
            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    BigText1(
                      text: 'Bangladesh',
                      color: AppColors.mainColor,
                    ),
                    Row(
                      children: [
                        SmallText1(
                          text: 'Narshingdi',
                          color: Colors.black54,
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor,
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Dimensions.height15,),
          Expanded(child: SingleChildScrollView(child: FoodPageBody1()))
        ],
      ),
    );
  }
}
