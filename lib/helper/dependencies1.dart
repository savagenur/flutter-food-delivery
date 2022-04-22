import 'package:food_delivery/controllers/popular_product_controller1.dart';
import 'package:food_delivery/controllers/recommended_product_controller1.dart';
import 'package:food_delivery/data/api/api_client1.dart';
import 'package:food_delivery/data/repository/popular_product_repo1.dart';
import 'package:food_delivery/data/repository/recommended_product_repo1.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient1(appBaseUrl: AppConstants.BASE_URL));

  Get.lazyPut(() => PopularProductRepo1(apiClient1: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo1(apiClient1: Get.find()));
  
  Get.lazyPut(() => PopularProductController1(popularProductRepo1: Get.find()));
  Get.lazyPut(() => RecommendedProductController1(recommendedProductRepo1: Get.find()));
}
