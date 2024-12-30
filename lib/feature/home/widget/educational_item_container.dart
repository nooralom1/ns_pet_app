import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';
import 'package:ns_pet_app/helpers/ui_helpers.dart';

class EducationalItemContainer extends StatelessWidget {
  final String image;
  final String text;
  final Widget? icon;
  final void Function()? onTap;
  const EducationalItemContainer({
    super.key,
    required this.image,
    required this.text,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: size.width * 0.6,
          decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              borderRadius: BorderRadius.circular(12.r)),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(12.r)),
                  child: Image.asset(image)),
              Padding(
                padding: EdgeInsets.all(16.sp),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.43,
                      child: Text(text,
                          style: TextFontStyle.text18c010911w700.copyWith(
                              fontSize: 14.sp, fontWeight: FontWeight.w600),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              ),
                    ),
                    UIHelper.horizontalSpace(8.w),
                    icon ?? const SizedBox()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
