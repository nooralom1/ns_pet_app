import 'dart:ui';

class MartCategoryModel {
  final String image;
  final String name;
  MartCategoryModel({required this.image, required this.name});
}

class FlashSaleModel {
  final String name;
  final String image;
  final Color backgroundColor;
  final String discount;
  final String regularPrice;
  final String discountPrice;
  FlashSaleModel(
      {required this.name,
      required this.image,
      required this.backgroundColor,
      required this.discount,
      required this.discountPrice,
      required this.regularPrice});
}
