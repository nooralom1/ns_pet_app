import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';
import 'package:ns_pet_app/helpers/ui_helpers.dart';

class CustomRowWidget extends StatelessWidget {
  final String categoryName;
  final String? subCategory;
  final void Function()? onTap;
  const CustomRowWidget({
    super.key, required this.categoryName, this.subCategory, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(categoryName, style: TextFontStyle.text18c010911w700),
            GestureDetector(
              onTap: onTap,
              child: Row(
                children: [
                  Text(subCategory??"",
                      style: TextFontStyle.text18c010911w700.copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w600)),
                  UIHelper.horizontalSpace(6.w),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 25.sp,
                    color: AppColors.c010911,
                  )
                ],
              ),
            )
          ]),
    );
  }
}