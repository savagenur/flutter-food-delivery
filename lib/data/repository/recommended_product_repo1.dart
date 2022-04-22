import 'package:food_delivery/data/api/api_client1.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommendedProductRepo1 extends GetConnect implements GetxService {
  final ApiClient1 apiClient1;
  RecommendedProductRepo1({required this.apiClient1});

  Future<Response> getData() async {
    return await apiClient1.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
