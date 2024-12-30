import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';
import 'package:ns_pet_app/helpers/ui_helpers.dart';

class FasshionItemContainer extends StatelessWidget {
  final String image;
  final String text;
  final String price;
  final Widget icon;
  final void Function()? onTap;
  const FasshionItemContainer({
    super.key,
    required this.image,
    required this.text,
    required this.icon,
    this.onTap,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: size.width * 0.4,
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
                padding: EdgeInsets.all(8.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("\$", style: TextFontStyle.text14c263948w700),
                            UIHelper.horizontalSpace(5.w),
                            Text(price, style: TextFontStyle.text14c263948w700),
                          ],
                        ),
                        icon
                      ],
                    ),
                    UIHelper.verticalSpace(12.h),
                    Text(
                      text,
                      style: TextFontStyle.text18c010911w700.copyWith(
                          fontSize: 14.sp, fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
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
