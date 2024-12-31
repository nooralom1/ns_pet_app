import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
import 'package:ns_pet_app/helpers/ui_helpers.dart';

class MartCategoryContainer extends StatelessWidget {
  final String image;
  final String name;
  const MartCategoryContainer({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Container(
          width: size.width * 0.13,
          height: size.height * 0.06,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.images.purpleSmallCard.path),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: Image.asset(image),
          ),
        ),
        UIHelper.verticalSpace(10.h),
        Text(name,style: TextFontStyle.text18c010911w700.copyWith(fontWeight: FontWeight.w500,fontSize: 14.sp),)
      ],
    );
  }
}
