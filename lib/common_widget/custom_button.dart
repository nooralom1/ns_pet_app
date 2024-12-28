// import 'package:donnamw203/helpers/text_font_style.dart';
// import 'package:donnamw203/gen/colors.gen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomButton extends StatelessWidget {
//   final double? buttonWidth;
//   final double? buttonHeight;
//   final double? buttonRadius;
//   final TextStyle? textStyle;
//   final Function()? onTap;
//   final String text;
//   const CustomButton({
//     super.key,
//     this.onTap,
//     required this.text,
//     this.buttonHeight,
//     this.buttonWidth,
//     this.buttonRadius,
//     this.textStyle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: buttonWidth ?? double.infinity,
//         height: buttonHeight ?? 48.h,
//         decoration: ShapeDecoration(
//           color: AppColors.primaryColor,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(buttonRadius ?? 4.r)),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: textStyle ?? TextFontStyle.text16cF3F3F3w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
