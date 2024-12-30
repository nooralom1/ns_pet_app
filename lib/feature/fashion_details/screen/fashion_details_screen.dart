import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';

class FashionDetailsScreen extends StatefulWidget {
  const FashionDetailsScreen({super.key});

  @override
  State<FashionDetailsScreen> createState() => _FashionDetailsScreenState();
}

class _FashionDetailsScreenState extends State<FashionDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: [
          Positioned(
            left: 80.w,
            child: Image.asset(
              Assets.images.fashionDetailsBackground.path,
              width: size.width * 1,
              height: size.height * 0.5,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60.h, left: 20.w, right: 20.w),
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
