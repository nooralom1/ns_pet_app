import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';
import 'package:ns_pet_app/helpers/ui_helpers.dart';

class FlashSaleCustomContainer extends StatelessWidget {
  final String name;
  final String image;
  final Color backgroundColor;
  final String discount;
  final String regularPrice;
  final String discountPrice;
  const FlashSaleCustomContainer({
    super.key,
    required this.name,
    required this.image,
    required this.backgroundColor,
    required this.discount,
    required this.regularPrice,
    required this.discountPrice,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(right: 16.w, top: 45.h),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: [
          Container(
            width: size.width * 0.3,
            decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                borderRadius: BorderRadius.circular(12.r)),
            child: Column(
              children: [
                Container(
                  height: 100.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          topRight: Radius.circular(12.r)),
                      color: backgroundColor),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(discountPrice,
                              style: TextFontStyle.text14cD423238w700),
                          Text(
                            regularPrice,
                            style: TextStyle(
                              color: Color(0xFF010911),
                              fontSize: 14,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                            ),
                          )
                        ],
                      ),
                      UIHelper.verticalSpace(12.h),
                      Text(
                        name,
                        style: TextFontStyle.text12c263948w400,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 80.h,
              child: Image.asset(
                image,
                width: 115.w,
                height: 137.76.h,
              )),
          Positioned(
              bottom: 83.h,
              child: Image.asset(
                Assets.images.discountbackground.path,
                width: 45.w,
                height: 25.h,
              )),
          Positioned(bottom: 88.h, left: 5.w, child: Text(discount))
        ],
      ),
    );
  }
}
