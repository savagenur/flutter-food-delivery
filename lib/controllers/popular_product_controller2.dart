import 'package:food_delivery/data/repository/popular_product_repo2.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController2 extends GetxController {
  final PopularProductRepo2 popularProductRepo2;
  late List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  PopularProductController2({required this.popularProductRepo2});

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo2.getData();
    try {
      if (response.statusCode == 200) {
        print('Got data2!!!');
        _products = [];
        _products.addAll(Product.fromJson(response.body).products);
        update();
      }
    } catch (e) {}
  }
}
