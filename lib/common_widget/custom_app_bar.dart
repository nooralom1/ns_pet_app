// import 'package:donnamw203/helpers/text_font_style.dart';
// import 'package:donnamw203/gen/assets.gen.dart';
// import 'package:donnamw203/gen/colors.gen.dart';
// import 'package:donnamw203/helpers/navigation_service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final VoidCallback? onBackPressed;
//   final VoidCallback? onMorePressed;
//   final bool centerTitle;
//   final bool isBack;
//   final bool isAction;
//   final List<Widget>? actions;
//   final IconData? leadingIcon;

//   const CustomAppBar({
//     super.key,
//     required this.title,
//     this.onBackPressed,
//     this.onMorePressed,
//     this.centerTitle = true,
//     this.actions,
//     this.isBack = true,
//     this.isAction = false,
//     this.leadingIcon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       centerTitle: centerTitle,
//       backgroundColor: AppColors.bgColor,
//       leading: isBack
//           ? GestureDetector(
//               onTap: () {
//                 NavigationService.goBack;
//               },
//               child: Container(
//                 padding: EdgeInsets.only(right: 8.w),
//                 alignment: Alignment.centerRight,
//                 child: SvgPicture.asset(Assets.icons.arowleft),
//               ),
//             )
//           : const SizedBox.shrink(),
//       title: Text(
//         title,
//         style: TextFontStyle.text18c2B2B2Bw600,
//       ),
//       elevation: 0,
//       actions: isAction ? actions : null,
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
