import 'package:food_delivery/pages/food/popular_food_detail1.dart';
import 'package:food_delivery/pages/food/recommended_food_detail1.dart';
import 'package:food_delivery/pages/home/main_food_page1.dart';
import 'package:get/get.dart';

class RouteHelper1 {
  static const String initial = '/';
  static const String popularFood = '/popular-food';
  static const String recommendedFood = '/recommended-food';

  static String getInitial() => initial;
  static String getPopularFood(pageId) => '$popularFood?pageid=$pageId';
  static String getRecommendedFood(pageId) => '$recommendedFood?pageid=$pageId';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return MainFoodPage1();
        }),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageid'];
          return PopularFoodDetail1(pageId: int.parse(pageId!));
        }),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageid'];
          return RecommendedFoodDetail1(pageId:int.parse(pageId!));
        })
  ];
}

// class RouteHelper1 {
//   static const String initial = '/';
//   static const String popularFood = '/popular-food';
//   static const String recommendedFood = '/recommended-food';

//   static String getInitial() => '$initial';
//   static String getPopularFood(int pageId) => '$popularFood?pageid=$pageId';
//   static String getRecommendedFood(int pageId) =>
//       '$recommendedFood?pageId=$pageId';

//   static List<GetPage> routes = [
//     GetPage(
//         name: initial,
//         page: () {
//           return MainFoodPage1();
//         },
//         transition: Transition.fadeIn),
//     GetPage(
//         name: popularFood,
//         page: () {
//           var pageId = Get.parameters['pageid'];

//           return PopularFoodDetail1(pageId: int.parse(pageId!),);
//         },
//         transition: Transition.fadeIn),
//     GetPage(
//         name: recommendedFood,
//         page: () {
//           return RecommendedFoodDetail1();
//         })
//   ];
// }
