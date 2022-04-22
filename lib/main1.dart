import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/controllers/popular_product_controller1.dart';
import 'package:food_delivery/controllers/popular_product_controller2.dart';
import 'package:food_delivery/controllers/recommended_product_controller.dart';
import 'package:food_delivery/controllers/recommended_product_controller1.dart';
import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/popular_food_detail1.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail1.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
// import 'package:food_delivery/home/main_food_page.dart';
// import 'package:food_delivery/home/main_food_page1.dart';
import 'package:food_delivery/pages/home/main_food_page1.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/routes/route_helper1.dart';
import 'package:get/get.dart';
import 'helper/dependencies1.dart' as dep;
import 'helper/dependencies2.dart' as dep2;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  await dep2.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController1>().getPopularProductList();
    Get.find<PopularProductController2>().getPopularProductList();

    Get.find<RecommendedProductController1>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MainFoodPage1(),
      initialRoute: RouteHelper1.initial,
      getPages: RouteHelper1.routes,

      // initialRoute: RouteHelper1.initial,
      // getPages: RouteHelper1.routes,
    );
  }
}
