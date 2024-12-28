// import 'package:donnamw203/helpers/text_font_style.dart';
// import 'package:donnamw203/gen/colors.gen.dart';
// import 'package:donnamw203/helpers/ui_helpers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:intl/intl.dart';

// class WeekViewCalender extends StatefulWidget {
//   const WeekViewCalender({super.key});

//   @override

//   // ignore: library_private_types_in_public_api
//   WeekViewCalenderState createState() => WeekViewCalenderState();
// }

// class WeekViewCalenderState extends State<WeekViewCalender> {
//   DateTime currentDate = DateTime.now();

//   List<DateTime> getWeekDays(DateTime date) {
//     final int currentDayOfWeek = date.weekday;
//     final DateTime startOfWeek =
//         date.subtract(Duration(days: currentDayOfWeek - 1));
//     return List.generate(7, (index) => startOfWeek.add(Duration(days: index)));
//   }

//   void showNextWeek() {
//     setState(() {
//       currentDate = currentDate.add(const Duration(days: 7));
//     });
//   }

//   void showPreviousWeek() {
//     setState(() {
//       currentDate = currentDate.subtract(const Duration(days: 7));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<DateTime> weekDays = getWeekDays(currentDate);

//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16.w),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: weekDays.map((date) {
//               bool isSelected = date.day == currentDate.day;
//               return GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     currentDate = date;
//                   });
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: 60.h,
//                   width: 44.w,
//                   decoration: BoxDecoration(
//                     color: isSelected
//                         ? AppColors.primaryColor
//                         : Colors.transparent,
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(DateFormat.E().format(date).substring(0, 3),
//                           style: isSelected
//                               ? TextFontStyle.text12cF3F3F3w400
//                               : TextFontStyle.text12c898989w400),
//                       UIHelper.verticalSpace(10.h),
//                       Text(date.day.toString(),
//                           style: isSelected
//                               ? TextFontStyle.text12cF3F3F3w500
//                               : TextFontStyle.text12c898989w500),
//                     ],
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ],
//     );
//   }
// }
