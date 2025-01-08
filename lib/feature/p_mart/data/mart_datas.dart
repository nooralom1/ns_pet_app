import 'package:ns_pet_app/feature/p_mart/model/p_mart_models.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';

List<MartCategoryModel> martCategory = [
  MartCategoryModel(image: Assets.images.food.path, name: "Food"),
  MartCategoryModel(image: Assets.images.game.path, name: "Game"),
  MartCategoryModel(image: Assets.images.clothes.path, name: "Clothes"),
  MartCategoryModel(image: Assets.images.care.path, name: "Care"),
  MartCategoryModel(image: Assets.images.walk.path, name: "Walk"),
  MartCategoryModel(image: Assets.images.medical.path, name: "Medical"),
  MartCategoryModel(image: Assets.images.kennel.path, name: "Kennel"),
  MartCategoryModel(image: Assets.images.other.path, name: "Others"),
];

List<FlashSaleModel> flashSale = [
  FlashSaleModel(
      name: "Dog food bowl",
      image: Assets.images.flashsale.path,
      backgroundColor: AppColors.cB1E0D8,
      discount: "-20%",
      discountPrice: "\$ 12",
      regularPrice: "\$20"),
  FlashSaleModel(
      name: "Fish food for grow and health",
      image: Assets.images.flashsale2.path,
      backgroundColor: AppColors.cFBAE9E,
      discount: "-20%",
      discountPrice: "\$ 8",
      regularPrice: "\$15"),
  FlashSaleModel(
      name: "Fish foad for grow and health",
      image: Assets.images.flashsale3.path,
      backgroundColor: AppColors.cD4A7C7,
      discount: "-20%",
      discountPrice: "\$ 35",
      regularPrice: "\$40"),
];
