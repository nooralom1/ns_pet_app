import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';

class CategoryContainer extends StatelessWidget {
  final String image;
  const CategoryContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * 0.15,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.purpleSmallCard.path),
              fit: BoxFit.cover)),
      child: Padding(
        padding: EdgeInsets.all(8.sp),
        child: Image.asset(image),
      ),
    );
  }
}
