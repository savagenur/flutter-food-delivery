import 'package:food_delivery/data/repository/recommended_product_repo1.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController1 extends GetxController {
  final RecommendedProductRepo1 recommendedProductRepo1;

  RecommendedProductController1({required this.recommendedProductRepo1});

  late List<ProductModel> _recommendedProductList = [];
  List<ProductModel> get recommendedProductList => _recommendedProductList;

  Future<void> getRecommendedProductList() async {
    Response response = await recommendedProductRepo1.getData();
    if (response.statusCode == 200) {
      print('We got RecommendedFood data!!!');
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      update();
    }
  }
}
