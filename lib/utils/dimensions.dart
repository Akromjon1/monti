import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Dimensions{
  static double? screenHeight = Get.context?.height;
  static double? screenWidth = Get.context?.width;

  static double pageView = screenHeight!/2.893;
  static double pageViewContainer = screenHeight!/4.209;
  static double pageViewTextContainer = screenHeight!/7.716;
  //dybamic height
  static double height10 = screenHeight!/92.6;
  static double height20 = screenHeight!/46.3;
  static double height15 = screenHeight!/61.73;
  static double height30 = screenHeight!/30.86;
  static double height45 = screenHeight!/20.57;
  //dynamic width
  static double width5 = screenHeight!/185.2;
  static double width10 = screenHeight!/92.6;
  static double width20 = screenHeight!/46.3;
  static double width30 = screenHeight!/46.3;
  static double width15 = screenHeight!/61.73;
  static double width45 = screenHeight!/20.57;
  //font size
  static double font20 = screenHeight!/46.3;
  static double font26 = screenHeight!/35.615;
  static double font16 = screenHeight!/57.875;
  static double font12 = screenHeight!/77.16;
  //border radius size
  static double radius20 = screenHeight!/46.3;
  static double radius30 = screenHeight!/30.86;
  static double radius15 = screenHeight!/61.73;
  //icon size
  static double iconSize24 = screenHeight!/38.583;
  static double iconSize16 = screenHeight!/57.875;
  //list view size
  static double listViewImgSize = screenWidth!/3.56;
  static double listViewTextContainer = screenWidth!/4.28;
  //popular food
  static double popularFoodImgSize = screenHeight!/2.64;

}