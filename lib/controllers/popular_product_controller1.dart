import 'package:food_delivery/data/repository/popular_product_repo1.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController1 extends GetxController {
  final PopularProductRepo1 popularProductRepo1;
  PopularProductController1({required this.popularProductRepo1});
  late List<ProductModel> _popularProductList = [];
  List<ProductModel> get popularProductList => _popularProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo1.getData();
    if (response.statusCode == 200) {
      print('Got data, Cheers!!!');
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update();
      _isLoaded = true;
    } else {
      print('Nooooooooo');
    }
  }
}
