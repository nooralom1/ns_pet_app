// import 'package:donnamw203/helpers/text_font_style.dart';
// import 'package:donnamw203/gen/assets.gen.dart';
// import 'package:donnamw203/gen/colors.gen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class CardTitle extends StatelessWidget {
//   final String? cardTitle;
//   final double? titlePaddingLeft;
//   final double? titlePaddingRight;
//   final double? titlePaddingTop;
//   final double? titlePaddingBottom;
//   final String? subTitle;
//   final bool? subTitleUsed;

//   final bool showSuffixIcon;
//   final bool dividerUsed;

//   const CardTitle({
//     super.key,
//     this.cardTitle,
//     this.showSuffixIcon = true,
//     this.dividerUsed = true,
//     this.titlePaddingBottom = 0,
//     this.titlePaddingLeft = 0,
//     this.titlePaddingRight = 0,
//     this.titlePaddingTop = 0,
//     this.subTitle,
//     this.subTitleUsed = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(
//                   left: titlePaddingLeft!,
//                   top: titlePaddingTop!,
//                   bottom: titlePaddingBottom!,
//                   right: titlePaddingRight!),
//               child: Column(
//                 children: [
//                   Text(
//                     cardTitle!,
//                     style: TextFontStyle.text18c424242w600,
//                   ),
//                 ],
//               ),
//             ),
//             showSuffixIcon
//                 ? Padding(
//                     padding: EdgeInsets.only(right: 24.w),
//                     child: SvgPicture.asset(Assets.icons.penIcon),
//                   )
//                 : const SizedBox.shrink(),
//           ],
//         ),

//         ///If Divider Used then take height
//         dividerUsed
//             ? SizedBox(
//                 height: 14.h,
//               )
//             : const SizedBox.shrink(),

//         ///If Divider used then show divider
//         dividerUsed
//             ? Divider(
//                 thickness: 1.h,
//                 color: AppColors.cF0F0F0,
//               )
//             : const SizedBox.shrink(),

//         ///If Divider Used then take height
//         dividerUsed
//             ? SizedBox(
//                 height: 11.h,
//               )
//             : const SizedBox.shrink(),

//         subTitleUsed!
//             ? Padding(
//                 padding: EdgeInsets.only(left: 20.w, bottom: 20.h, right: 20.w),
//                 child: Text(
//                   subTitle!,
//                   style: TextFontStyle.text14c717171w400,
//                 ),
//               )
//             : const SizedBox.shrink()
//       ],
//     );
//   }
// }
