import 'package:food_delivery/data/api/api_client2.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo2 extends GetConnect implements GetxService {
  final ApiClient2 apiClient2;

  PopularProductRepo2({required this.apiClient2});

  Future<Response> getData() async {
    return await apiClient2.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
