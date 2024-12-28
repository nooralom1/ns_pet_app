// import 'package:donnamw203/helpers/text_font_style.dart';
// import 'package:donnamw203/gen/assets.gen.dart';
// import 'package:donnamw203/helpers/ui_helpers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class CustomCard extends StatelessWidget {
//   final Widget child;
//   final double? width;
//   final double? height;
//   final String? cardTitle;
//   final bool cardTitleUsed;
//   final bool showSuffixIcon;
//   final void Function()? onTap;

//   const CustomCard({
//     super.key,
//     required this.child,
//     this.height,
//     this.width,
//     this.cardTitle,
//     this.cardTitleUsed = true,
//     this.showSuffixIcon = true, this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ///Card Title
//         ///If Card Title Is used show else don't show

//         cardTitleUsed
//             ? Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     cardTitle!,
//                     style: TextFontStyle.text18c424242w600,
//                   ),
//                   GestureDetector(
//                     onTap: onTap,
//                     child: SvgPicture.asset(Assets.icons.penIcon))
//                 ],
//               )
//             : const SizedBox.shrink(),
//         cardTitleUsed ? UIHelper.verticalSpace(16.h) : const SizedBox.shrink(),

//         Container(
//           width: width,
//           height: height,
//           // padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
//           decoration: ShapeDecoration(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8.17),
//             ),
//             shadows: const [
//               BoxShadow(
//                 color: Color(0x338A959E),
//                 blurRadius: 40.84,
//                 offset: Offset(0, 8.17),
//                 spreadRadius: 0,
//               )
//             ],
//           ),
//           child: child,
//         ),
//       ],
//     );
//   }
// }
