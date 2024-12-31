import 'package:carousel_slider/carousel_slider.dart';
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
  List<String> images = [
    Assets.images.fashionImage.path,
    Assets.images.fashionImage.path,
    Assets.images.fashionImage.path,
    Assets.images.fashionImage.path,
    Assets.images.fashionImage.path,
  ];

  int _currentIndex = 0;

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
                  Assets.icons.backicon.path,
                  width: 36.w,
                  height: 36.h,
                ),
                Text(
                  "Petty",
                  style: TextFontStyle.text36allPrimaryColorw400,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      Assets.icons.carticon.path,
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
          Padding(
            padding: EdgeInsets.only(top: 120.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => setState(() => _currentIndex = entry.key),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_currentIndex == entry.key ? 0.9 : 0.4),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 150.h),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                viewportFraction: 0.4,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: images.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Image.asset(imageUrl, fit: BoxFit.fill),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
