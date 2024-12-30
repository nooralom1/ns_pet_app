import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/common_widget/custom_row_widget.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/feature/home/data/data.dart';
import 'package:ns_pet_app/feature/home/widget/category_container.dart';
import 'package:ns_pet_app/feature/home/widget/custom_slider.dart';
import 'package:ns_pet_app/feature/home/widget/educational_item_container.dart';
import 'package:ns_pet_app/feature/home/widget/fasshion_item_container.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';
import 'package:ns_pet_app/helpers/all_routes.dart';
import 'package:ns_pet_app/helpers/nevigation_service.dart';
import 'package:ns_pet_app/helpers/ui_helpers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    // HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r)),
                  image: DecorationImage(
                      image: AssetImage(Assets.images.poster.path),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    UIHelper.verticalSpace(60.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          Assets.icons.searchIcon.path,
                          width: 36.w,
                          height: 36.h,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset(
                              Assets.icons.notificationIcon.path,
                              width: 36.w,
                              height: 36.h,
                            ),
                            Positioned(
                              top: 20.h,
                              right: 18.w,
                              child: Container(
                                width: 25.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                    color: AppColors.cD42323,
                                    borderRadius: BorderRadius.circular(50.r)),
                                child: Center(
                                  child: Text(
                                    "4",
                                    style: TextFontStyle.text14cFFFFFFw500,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(10.h),
                    const CustomSliderWidget()
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpace(40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: size.height * 0.07,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 35.w,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: pets.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return CategoryContainer(image: pets[index]);
                    }),
              ),
            ),
            UIHelper.verticalSpace(24.h),
            CustomRowWidget(
              categoryName: 'Educational',
              subCategory: "all",
              onTap: () {},
            ),
            UIHelper.verticalSpace(8.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SizedBox(
                height: size.height * 0.24,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: educational.length,
                    itemBuilder: (context, index) {
                      return EducationalItemContainer(
                        image: educational[index].image,
                        text: educational[index].name,
                        icon: index == 0
                            ? Image.asset(
                                Assets.icons.starYello.path,
                                width: 24.w,
                              )
                            : const SizedBox(),
                      );
                    }),
              ),
            ),
            UIHelper.verticalSpace(24.h),
            CustomRowWidget(
              categoryName: 'Service',
              subCategory: "all",
              onTap: () {},
            ),
            UIHelper.verticalSpace(8.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SizedBox(
                height: size.height * 0.24,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: service.length,
                    itemBuilder: (context, index) {
                      return EducationalItemContainer(
                        image: service[index].image,
                        text: service[index].name,
                      );
                    }),
              ),
            ),
            UIHelper.verticalSpace(24.h),
            CustomRowWidget(
              categoryName: 'P - fashion',
              subCategory: "all",
              onTap: () {},
            ),
            UIHelper.verticalSpace(8.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SizedBox(
                height: size.height * 0.32,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: fashion.length,
                    itemBuilder: (context, index) {
                      return FasshionItemContainer(
                        onTap: () {
                          NavigationService.navigateTo(Routes.fashionDetails);
                        },
                        image: fashion[index].image,
                        text: fashion[index].name,
                        price: fashion[index].price,
                        icon: fashion[index].isFavorite
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    fashion[index].isFavorite =
                                        !fashion[index].isFavorite;
                                  });
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: AppColors.cD42323,
                                  size: 22.sp,
                                ))
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    fashion[index].isFavorite =
                                        !fashion[index].isFavorite;
                                  });
                                },
                                child:
                                    Icon(Icons.favorite_border, size: 22.sp)),
                      );
                    }),
              ),
            ),
            UIHelper.verticalSpace(24.h),
            CustomRowWidget(
              categoryName: 'P - food',
              subCategory: "all",
              onTap: () {},
            ),
            UIHelper.verticalSpace(8.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SizedBox(
                height: size.height * 0.32,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: food.length,
                    itemBuilder: (context, index) {
                      return FasshionItemContainer(
                        image: food[index].image,
                        text: food[index].name,
                        price: food[index].price,
                        icon: food[index].isFavorite
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    food[index].isFavorite =
                                        !food[index].isFavorite;
                                  });
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: AppColors.cD42323,
                                  size: 22.sp,
                                ))
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    food[index].isFavorite =
                                        !food[index].isFavorite;
                                  });
                                },
                                child:
                                    Icon(Icons.favorite_border, size: 22.sp)),
                      );
                    }),
              ),
            ),
            UIHelper.verticalSpace(24.h),
            CustomRowWidget(
              categoryName: 'P - game',
              subCategory: "all",
              onTap: () {},
            ),
            UIHelper.verticalSpace(8.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SizedBox(
                height: size.height * 0.32,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: game.length,
                    itemBuilder: (context, index) {
                      return FasshionItemContainer(
                        image: game[index].image,
                        text: game[index].name,
                        price: game[index].price,
                        icon: game[index].isFavorite
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    game[index].isFavorite =
                                        !game[index].isFavorite;
                                  });
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: AppColors.cD42323,
                                  size: 22.sp,
                                ))
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    game[index].isFavorite =
                                        !game[index].isFavorite;
                                  });
                                },
                                child:
                                    Icon(Icons.favorite_border, size: 22.sp)),
                      );
                    }),
              ),
            ),
            UIHelper.verticalSpace(16.h),
          ],
        ),
      ),
    );
  }
}
