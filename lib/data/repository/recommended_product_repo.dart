import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetConnect implements GetxService {
  ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
