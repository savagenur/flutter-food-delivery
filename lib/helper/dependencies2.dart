import 'package:food_delivery/controllers/popular_product_controller2.dart';
import 'package:food_delivery/data/api/api_client2.dart';
import 'package:food_delivery/data/repository/popular_product_repo2.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient2(appBaseUrl: AppConstants.BASE_URL));
  Get.lazyPut(() => PopularProductRepo2(apiClient2: Get.find()));
  Get.lazyPut(() => PopularProductController2(popularProductRepo2: Get.find()));
}
