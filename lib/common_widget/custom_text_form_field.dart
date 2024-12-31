// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import '../gen/colors.gen.dart';

class CustomTextFormField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final double? height;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final EdgeInsets? contentPadding;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool isPrefixIcon;
  final double borderRadius;
  final VoidCallback? onSuffixIconTap;
  final String? iconpath;
  final int maxline;
  final int? minLines;
  final bool readOnly;
  final bool isBorder;
  final Color fillColor;
  final Color? borderColor;
  // final Color? textInputColor;
  final Color? focusBorderColor;
  final Color? cursorColor;
  final TextStyle? hintStyle;
  final TextStyle? textInputStyle;
  final TextAlign? textAlign;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final TextStyle? labelStyle;
  const CustomTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
    this.borderRadius = 8.0, // Set to 10 pixels
    required this.isPrefixIcon,
    this.iconpath,
    this.onSuffixIconTap,
    this.readOnly = false,
    this.maxline = 1,
    this.isBorder = true,
    this.fillColor = AppColors.c000000,
    this.hintStyle,
    this.contentPadding,
    this.height,
    this.minLines,
    // this.textInputColor,
    this.textAlign,
    this.textInputStyle,
    this.focusBorderColor,
    this.cursorColor,
    this.textInputAction,
    this.borderColor,
    this.maxLength,
    this.labelStyle,
  });

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        //  isFocused = focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: TextFormField(
        maxLength: widget.maxLength,
        textInputAction: widget.textInputAction,
        textAlign: widget.textAlign ?? TextAlign.start,
        readOnly: widget.readOnly,
        maxLines: widget.maxline,
        minLines: widget.minLines,
        focusNode: _focusNode,
        cursorColor: widget.cursorColor ?? AppColors.allPrimaryColor,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        onChanged: widget.onChanged,
        validator: widget.validator,
        decoration: InputDecoration(
          // floatingLabelBehavior: FloatingLabelBehavior.auto,
          // floatingLabelAlignment: FloatingLabelAlignment.center,
          filled: true,
          fillColor: widget.fillColor,
          labelText: widget.labelText,
          hintText: widget.hintText,
          labelStyle: widget.labelStyle,
          hintStyle:
              widget.hintStyle ?? TextFontStyle.text12c000000w400,
          prefixIcon: widget.isPrefixIcon ? widget.prefixIcon : null,
          suffixIcon: widget.suffixIcon,
          // suffixIcon: widget.suffixIcon != null
          //     ? GestureDetector(
          //   onTap: widget.onSuffixIconTap,
          //   child: Padding(
          //     padding: EdgeInsets.only(right: 16.w),
          //     child: Icon(
          //       widget.suffixIcon,
          //       color: _isFocused
          //           ? AppColors.allPrimaryColor
          //           : AppColors.cffffff,
          //     ),
          //   ),
          // )
          //     : null,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide.none),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: widget.isBorder == true
                ? BorderSide(
                    color: widget.borderColor ?? AppColors.allPrimaryColor,
                  )
                : BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: widget.focusBorderColor ??
                  AppColors.allPrimaryColor, // Adjust the border width if needed
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: const BorderSide(color: Colors.red),
          ),
          disabledBorder: InputBorder.none,
          contentPadding: widget.contentPadding ??
              EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
        ),
        style: widget.textInputStyle ??
            TextFontStyle.text12c000000w400
                .copyWith(color: AppColors.allPrimaryColor),
      ),
    );
  }
}
