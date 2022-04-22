import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_delivery/controllers/popular_product_controller1.dart';
import 'package:food_delivery/controllers/popular_product_controller2.dart';
import 'package:food_delivery/controllers/recommended_product_controller1.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:food_delivery/pages/food/popular_food_detail1.dart';
import 'package:food_delivery/routes/route_helper1.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text1.dart';
import 'package:food_delivery/widgets/icon_and_text_widget1.dart';
import 'package:food_delivery/widgets/small_text1.dart';
import 'package:get/get.dart';

class FoodPageBody1 extends StatefulWidget {
  const FoodPageBody1({Key? key}) : super(key: key);

  @override
  State<FoodPageBody1> createState() => _FoodPageBody1State();
}

class _FoodPageBody1State extends State<FoodPageBody1> {
  bool clicked = false;
  PageController pageController = PageController(
    viewportFraction: 0.9,
  );
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

// @override
// void initState2(){
//   super.initState();
//   pageController.addListener(() {
//     setState(() {
//     _currPageValue = pageController.page!;
//   });
//   });
// }

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print(Get.context!.width);
    return Column(
      children: [
        GetBuilder<PopularProductController1>(builder: (popularProducts) {
          return popularProducts.isLoaded
              ? Container(
                  height: 350,
                  // color: Colors.green[200],
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: popularProducts.popularProductList.length,
                    itemBuilder: (context, position) {
                      return _buildPageItem(position,
                          popularProducts.popularProductList[position]);
                    },
                  ),
                )
              : Center(child: CircularProgressIndicator());
        }),
        GetBuilder<PopularProductController1>(builder: (popularProducts) {
          return popularProducts.isLoaded
              ? new DotsIndicator(
                  dotsCount: popularProducts.popularProductList.length,
                  position: _currPageValue,
                  decorator: DotsDecorator(
                    activeColor: AppColors.mainColor,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                )
              : new DotsIndicator(
                  dotsCount: 1,
                  position: _currPageValue,
                  decorator: DotsDecorator(
                    activeColor: AppColors.mainColor,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                );
        }),
        SizedBox(
          height: Dimensions.height10,
        ),
        Container(
          margin: EdgeInsets.only(
              left: Dimensions.width20, right: Dimensions.width20),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText1(text: 'Popular'),
              SizedBox(
                width: Dimensions.height10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: BigText1(text: '.'),
              ),
              SizedBox(
                width: Dimensions.height10,
              ),
              SmallText1(text: 'Food pairing'),
            ],
          ),
        ),
        GetBuilder<RecommendedProductController1>(
            builder: (recommendedProducts) {
          return Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            height: (recommendedProducts.recommendedProductList.length + 0.8) *
                Dimensions.recommendedImgSize,
            child: ListView.builder(
              // shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: recommendedProducts.recommendedProductList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: Dimensions.height10),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper1.getRecommendedFood(index));
                    },
                    child: Row(
                      children: [
                        Container(
                          height: Dimensions.recommendedImgSize,
                          width: Dimensions.recommendedImgSize,
                          decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(AppConstants.BASE_URL +
                                    AppConstants.UPLOAD_URL +
                                    recommendedProducts
                                        .recommendedProductList[index].img!),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: Dimensions.width10,
                                  right: Dimensions.width10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BigText1(text: recommendedProducts.recommendedProductList[index].name!),
                                  SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  SmallText1(
                                      text: "With Chinese characteristics"),
                                  SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconAndTextWidget1(
                                          icon: Icons.circle_rounded,
                                          iconColor: AppColors.iconColor1,
                                          text: 'Normal'),
                                      IconAndTextWidget1(
                                          icon: Icons.location_on,
                                          iconColor: AppColors.mainColor,
                                          text: "1.7km"),
                                      IconAndTextWidget1(
                                          icon: Icons.access_time_rounded,
                                          iconColor: AppColors.iconColor2,
                                          text: "32min"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        })
      ],
    );
  }

  Widget _buildPageItem(int index, ProductModel popularProduct) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = matrix..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = _scaleFactor;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - currScale) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: GestureDetector(
        onTap: () {
          Get.toNamed(RouteHelper1.getPopularFood(index));
        },
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              height: _height,
              // width: 300,
              decoration: BoxDecoration(
                color: index.isOdd ? Colors.purple[200] : Colors.pink[300],
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(AppConstants.BASE_URL +
                      AppConstants.UPLOAD_URL +
                      popularProduct.img!),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // width: 150,
                height: 130,
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Container(
                  margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText1(text: popularProduct.name!),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: AppColors.mainColor,
                                size: 15,
                              );
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText1(text: "4.5"),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText1(text: "1287"),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText1(text: "comments"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconAndTextWidget1(
                              icon: Icons.circle_rounded,
                              iconColor: AppColors.iconColor1,
                              text: 'Normal'),
                          IconAndTextWidget1(
                              icon: Icons.location_on,
                              iconColor: AppColors.mainColor,
                              text: "1.7km"),
                          IconAndTextWidget1(
                              icon: Icons.access_time_rounded,
                              iconColor: AppColors.iconColor2,
                              text: "32min"),
                        ],
                      )
                    ],
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
