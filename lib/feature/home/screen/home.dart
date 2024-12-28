import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/feature/home/data/data.dart';
import 'package:ns_pet_app/feature/home/widget/custom_slider.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';
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
                            right: 18,
                            child: Container(
                              width: 25.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: AppColors.cD42323,
                                borderRadius: BorderRadius.circular(50.r)
                              ),
                              child: Center(
                                child: Text("4",style: TextFontStyle.text14cFFFFFFw500,),
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
              height: 60.h,
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 35.w,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: Data.pets.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 60.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  Assets.images.purpleSmallCard.path),
                              fit: BoxFit.cover)),
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Image.asset(Data.pets[index]),
                      ),
                    );
                  }),
            ),
          ),
          UIHelper.verticalSpace(16.h),
          UIHelper.verticalSpace(16.h),
        ],
      ),
    );
  }
}
