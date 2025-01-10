import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/common_widget/custom_row_widget.dart';
import 'package:ns_pet_app/common_widget/custom_text_form_field.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/feature/p_mart/data/mart_datas.dart';
import 'package:ns_pet_app/feature/p_mart/widget/flash_sale_custom_container.dart';
import 'package:ns_pet_app/feature/p_mart/widget/mart_category_container.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';
import 'package:ns_pet_app/helpers/ui_helpers.dart';
import 'package:slide_countdown/slide_countdown.dart';

class PMartScreen extends StatefulWidget {
  const PMartScreen({super.key});

  @override
  State<PMartScreen> createState() => _PMartScreenState();
}

class _PMartScreenState extends State<PMartScreen> {
  TextEditingController searchController = TextEditingController();
  List colors = [
    AppColors.cB1E0D8,
    AppColors.cFBAE9E,
    AppColors.cD4A7C7,
    AppColors.cFBD97D,
    AppColors.cABDCFC,
    AppColors.cFDD2A4,
    AppColors.cBBB7EA,
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UIHelper.verticalSpace(60.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(""),
                  Text(
                    "P-mart",
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
            UIHelper.verticalSpace(24.h),
            Container(
              width: 320.w,
              height: 45.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                      image: AssetImage(Assets.images.textFilled.path),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  children: [
                    Image.asset(
                      Assets.icons.search.path,
                      width: 22.w,
                    ),
                    SizedBox(
                        width: 255.w,
                        child: CustomTextFormField(
                          controller: searchController,
                          isPrefixIcon: false,
                          fillColor: Colors.transparent,
                          borderColor: Colors.transparent,
                          focusBorderColor: Colors.transparent,
                          hintText: "Text hear",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpace(32.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                child: GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.9,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: martCategory.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return MartCategoryContainer(
                        image: martCategory[index].image,
                        name: martCategory[index].name,
                      );
                    }),
              ),
            ),
            UIHelper.verticalSpace(14.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Flash sale",
                          style: TextFontStyle.text18c010911w700,
                        ),
                        UIHelper.horizontalSpace(
                            12.w), // Space between the text and countdown
                        SlideCountdownSeparated(
                          duration: Duration(
                            days: 7,
                          ),
                          separator: ':',
                          style: TextFontStyle.text14cFFFFFFw500.copyWith(
                              fontSize: 12.sp, fontWeight: FontWeight.w700),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.cCD2222,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text("all",
                              style: TextFontStyle.text18c010911w700.copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
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
            ),
            UIHelper.verticalSpace(12.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SizedBox(
                height: size.height * 0.27,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: flashSale.length,
                    itemBuilder: (context, index) {
                      return FlashSaleCustomContainer(
                        name: flashSale[index].name,
                        backgroundColor: flashSale[index].backgroundColor,
                        discount: flashSale[index].discount,
                        discountPrice: flashSale[index].discountPrice,
                        image: flashSale[index].image,
                        regularPrice: flashSale[index].regularPrice,
                      );
                    }),
              ),
            ),
            UIHelper.verticalSpace(25.h),
            CustomRowWidget(
              categoryName: "Sale pets day",
              subCategory: "all",
              onTap: () {},
            ),
            UIHelper.verticalSpace(16.h),
            Image.asset(
              Assets.images.salePetsDay.path,
              height: 188.h,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            UIHelper.verticalSpace(32.h),
            Text(
              "Recommened",
              style: TextFontStyle.text18c010911w700,
            ),
            UIHelper.verticalSpace(16.h),
            SizedBox(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.w,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 10.h),
                  itemBuilder: (context, index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.loose,
                      children: [
                        Container(
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
                                    color: AppColors.allPrimaryColor),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0.sp),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("10",
                                            style: TextFontStyle
                                                .text14cD423238w700),
                                        Text(
                                          "10",
                                          style: TextStyle(
                                            color: Color(0xFF010911),
                                            fontSize: 14,
                                            fontFamily: 'SF Pro',
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        )
                                      ],
                                    ),
                                    UIHelper.verticalSpace(12.h),
                                    Text(
                                      "name",
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
                              Assets.images.cat.path,
                              width: 115.w,
                              height: 137.76.h,
                            )),
                      ],
                    );
                  }),
            ),
            UIHelper.verticalSpace(120.h),
          ],
        ),
      ),
    );
  }
}
