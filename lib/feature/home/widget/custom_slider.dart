import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
import 'package:ns_pet_app/helpers/ui_helpers.dart';

class CustomSliderWidget extends StatelessWidget {
  const CustomSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return CarouselSlider.builder(
      itemCount: 5,

      ///  thi is a demo image ///
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return SizedBox(
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Discount 20%",
                    style: TextFontStyle.text14cCD2222w600,
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    "2/3/2023 - 2/4/2023",
                    style: TextFontStyle.text14c000000w400
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text("Apply for all pet",
                      style: TextFontStyle.text14c000000w400
                          .copyWith(fontWeight: FontWeight.w500)),
                ],
              ),
              Image.asset(
                Assets.images.sliderImage.path,
                width: 186.w,
                height: 104.h,
              )
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: 120.h,
        autoPlay: true,
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
        viewportFraction: 1,
      ),
    );
  }
}
