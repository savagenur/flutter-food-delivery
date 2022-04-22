import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/data/api/api_client1.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo1 extends GetConnect implements GetxService {
  final ApiClient1 apiClient1;

  PopularProductRepo1({required this.apiClient1});

  Future<Response> getData() async {
    return await apiClient1.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
