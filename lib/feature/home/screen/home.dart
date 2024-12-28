import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/feature/home/widget/custom_slider.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
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
    return Scaffold(
      body: Column(
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
                  UIHelper.verticalSpace(62.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        Assets.icons.searchIcon.path,
                        width: 36.w,
                        height: 36.h,
                      ),
                      Image.asset(
                        Assets.icons.notificationIcon.path,
                        width: 36.w,
                        height: 36.h,
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(10.h),
                 const  CustomSliderWidget()
                ],
              ),
            ),
          ),
          UIHelper.verticalSpace(16.h),
          UIHelper.verticalSpace(16.h),
          UIHelper.verticalSpace(16.h),
        ],
      ),
    );
  }
}
