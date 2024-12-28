import 'package:get/get.dart';
import 'package:ns_pet_app/helpers/all_routes.dart';
import 'package:ns_pet_app/helpers/nevigation_service.dart';

class SplashController extends GetxController{

  goNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    NavigationService.navigateTo(Routes.homeScreen);
  }

  @override
  void onInit() {
    goNextPage();
    super.onInit();
  }
}