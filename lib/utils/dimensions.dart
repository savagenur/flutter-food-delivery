import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // 806/220=3.66 (Height of screen divided by height of container)
  static double pageViewContainer = screenHeight / 2.99;

  static double pageView = screenHeight / 2.52;

  // 806/120=3.84 (Height of screen divided by height of container)
  static double pageViewTextContainer = screenHeight / 6.72;

// Dynamic height padding and margin
  static double height10 = screenHeight / 80.6;
  static double height15 = screenHeight / 53.73;
  static double height20 = screenHeight / 40.3;
  static double height30 = screenHeight / 26.86;
  static double height45 = screenHeight / 17.91;

// Dynamic width padding and margin
  static double width10 = screenHeight / 80.6;
  static double width15 = screenHeight / 53.73;
  static double width20 = screenHeight / 40.3;
  static double width30 = screenHeight / 26.86;
  static double width45 = screenHeight / 17.91;

// Font size
  static double font16 = screenHeight / 50.38;
  static double font20 = screenHeight / 40.3;
  static double font26 = screenHeight / 31;

// Radius
  static double radius15 = screenHeight / 53.73;
  static double radius20 = screenHeight / 40.3;
  static double radius30 = screenHeight / 26.86;

// Icon size
  static double iconSize24 = screenHeight / 33.58;
  static double iconSize16 = screenHeight / 50.38;
  static double appIconSize45 = screenHeight / 17.91;

// List view size
  static double listViewImgSize = screenHeight / 6.71;
  static double listTextViewContSize = screenHeight / 8.06;

// Popular food image size
  static double popularFoodImgSize = screenHeight / 2.3; //350

// Bottom height
  static double bottomHeightBar = screenHeight / 6.71;
}
