// import 'package:donnamw203/helpers/text_font_style.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../gen/colors.gen.dart';

// final class CustomFormField extends StatelessWidget {
//   final String? hintText;
//   final double? hintFontSize;
//   final String? labelText;
//   final TextEditingController? controller;
//   final TextInputType? inputType;
//   final double? fieldHeight;
//   final int? maxline;
//   final String? Function(String?)? validator;
//   final bool? validation;
//   final Widget? suffixIcon;
//   final Widget? prefixIcon;
//   final bool isObsecure;
//   final bool isPass;
//   final FocusNode? focusNode;
//   final TextInputAction? textInputAction;
//   final Function(String)? onFieldSubmitted;
//   final Function(String)? onChanged;
//   final List<TextInputFormatter>? inputFormatters;
//   final TextStyle? labelStyle;
//   final TextStyle? style;
//   final bool? isEnabled;
//   final double? cursorHeight;
//   final Color? disableColor;
//   final bool isRead;
//   final double? borderRadius;
//   final EdgeInsetsGeometry? padding;
//   final EdgeInsetsGeometry? contentPadding;
//   final bool? filled;
//   final Color? fillColor;

//   const CustomFormField({
//     super.key,
//     this.hintText,
//     this.labelText,
//     this.controller,
//     this.inputType,
//     this.fieldHeight,
//     this.maxline,
//     this.validator,
//     this.validation = false,
//     this.suffixIcon,
//     this.prefixIcon,
//     this.isObsecure = false,
//     this.isPass = false,
//     this.focusNode,
//     this.textInputAction = TextInputAction.next,
//     this.onFieldSubmitted,
//     this.onChanged,
//     this.inputFormatters,
//     this.labelStyle,
//     this.isEnabled,
//     this.style,
//     this.cursorHeight,
//     this.disableColor,
//     this.isRead = false,
//     this.borderRadius,
//     this.padding,
//     this.contentPadding =
//         const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
//     this.hintFontSize, this.filled, this.fillColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       readOnly: isRead,
//       cursorHeight: cursorHeight ?? 20.h,
//       cursorColor: AppColors.c000000,
//       focusNode: focusNode,
//       obscureText: isPass ? isObsecure : false,
//       textInputAction: textInputAction,
//       autovalidateMode: validation!
//           ? AutovalidateMode.always
//           : AutovalidateMode.onUserInteraction,
//       validator: validator,
//       maxLines: maxline ?? 1,
//       controller: controller,
//       onFieldSubmitted: onFieldSubmitted,
//       onChanged: onChanged,
//       inputFormatters: inputFormatters,
//       enabled: isEnabled,
//       obscuringCharacter: "*",
//       decoration: InputDecoration(
//         filled: filled,
//         fillColor: fillColor,
//         suffixIcon: suffixIcon,
//         prefixIcon: prefixIcon != null
//             ? Padding(
//                 padding: EdgeInsets.all(12.sp),
//                 child: prefixIcon,
//               )
//             : null,
//         contentPadding: contentPadding ?? EdgeInsets.zero,
//         hintText: hintText,
//         hintStyle: TextFontStyle.text12c424242w400,
//         labelText: labelText,
//         errorStyle: TextStyle(
//           fontSize: 10.sp,
//           fontWeight: FontWeight.w400,
//           // color: AppColors.cD12E34,
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
//           borderSide: BorderSide(
//             color: Colors.red,
//             width: 1.w,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
//           borderSide: BorderSide(
//             color: AppColors.c050505,
//             width: 1.w,
//           ),
//         ),
//         disabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
//           borderSide: const BorderSide(
//             // color: disableColor ?? AppColors.c6D6D6D.withOpacity(0.19),
//             width: 1,
//           ),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
//           borderSide: const BorderSide(
//             color: Colors.red,
//             width: 1,
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
//           borderSide: BorderSide(
//             color: AppColors.c050505,
//             width: 0.5.w,
//           ),
//         ),
//       ),
//       style: style ?? TextFontStyle.text16c2B2B2Bw400,
//       keyboardType: inputType,
//     );
//   }
// }
