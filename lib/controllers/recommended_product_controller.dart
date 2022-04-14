import 'package:food_delivery/data/repository/recommended_product_repo.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  RecommendedProductRepo recommendedProductRepo;
  late List<ProductModel> _products;
  List<ProductModel> get products => _products;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  RecommendedProductController({required this.recommendedProductRepo});

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print('Recommend request is working!');
      _products = [];
      _products.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update();
    }
  }
}
