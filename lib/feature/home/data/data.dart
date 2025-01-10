import 'package:ns_pet_app/feature/home/model/home_models.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';

List pets = [
  Assets.images.dog.path,
  Assets.images.cat.path,
  Assets.images.bird.path,
  Assets.images.fish.path,
];

List<Educational> educational = [
  Educational(
      image: Assets.images.educational1.path,
      name: "Health care for your pets service", bgColor: AppColors.cB1E0D8),
  Educational(
      image: Assets.images.educational2.path,
      name: "Corneal Ulcers in Cats and Dogs", bgColor: AppColors.cB1E0D8),
  Educational(
      image: Assets.images.educational1.path,
      name: "Health care for your pets service", bgColor: AppColors.cB1E0D8),
  Educational(
      image: Assets.images.educational2.path,
      name: "Corneal Ulcers in Cats and Dogs", bgColor: AppColors.cB1E0D8),
];

List<Educational> service = [
  Educational(image: Assets.images.service1.path, name: "Bathing pets service", bgColor: AppColors.cABDCFC),
  Educational(image: Assets.images.service2.path, name: "Play with pet", bgColor: AppColors.cFBAE9E),
  Educational(image: Assets.images.service1.path, name: "Bathing pets service", bgColor: AppColors.cABDCFC),
  Educational(image: Assets.images.service2.path, name: "Play with pet", bgColor: AppColors.cFBAE9E),
];

List<PFasshion> fashion = [
  PFasshion(image: Assets.images.pFashion1.path, name: "Cute cotton tank-top for dog", price: '172', isFavorite: false),
  PFasshion(image: Assets.images.pFashion2.path, name: "Blue denim GD for cat", price: '112', isFavorite: true),
  PFasshion(image: Assets.images.pFashion3.path, name: "Colorful capes for parrots", price: '172', isFavorite: false),
  PFasshion(image: Assets.images.pFashion1.path, name: "Play with pet", price: '172', isFavorite: false),
];

List<PFasshion> food = [
  PFasshion(image: Assets.images.food1.path, name: "Fish food", price: '24', isFavorite: false),
  PFasshion(image: Assets.images.food2.path, name: "Protein nut food for dog", price: '35', isFavorite: true),
  PFasshion(image: Assets.images.food3.path, name: "Crack for bird", price: '9', isFavorite: false),
  PFasshion(image: Assets.images.food1.path, name: "Fish food", price: '24', isFavorite: false),
];

List<PFasshion> game = [
  PFasshion(image: Assets.images.game1.path, name: "Parrot toy color ring", price: '17', isFavorite: false),
  PFasshion(image: Assets.images.game2.path, name: "Fish food", price: '24', isFavorite: true),
  PFasshion(image: Assets.images.game3.path, name: "Colorful toys for pet", price: '6', isFavorite: false),
  PFasshion(image: Assets.images.game1.path, name: "Parrot toy color ring", price: '17', isFavorite: false),
];

