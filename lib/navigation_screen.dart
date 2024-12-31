import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ns_pet_app/constant/text_font_style.dart';
import 'package:ns_pet_app/feature/home/screen/home.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 4;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// widget list
    final List<Widget> bottomBarPages = [
      const HomeScreen(),
      const Page3(),
      const Page4(),
      const Page5(),
    ];
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: AppColors.allPrimaryColor,
              showLabel: true,
              textOverflow: TextOverflow.visible
              
              ,
              maxLine: 1,
              shadowElevation: 8,
              kBottomRadius: 20.r,
              notchColor: AppColors.cC48590,
              /// restart app if you change removeMargins
              removeMargins: false,
              showShadow: true,
              durationInMilliSeconds: 200,
              itemLabelStyle: const TextStyle(fontSize: 10),
              elevation: 1,
              bottomBarItems: [
                BottomBarItem(
                    inActiveItem: Image.asset(Assets.icons.home.path),
                    activeItem: Image.asset(Assets.icons.home.path),
                    itemLabelWidget: Text(
                      "Home",
                      style: TextFontStyle.text14cFFFFFFw500.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    )),
                BottomBarItem(
                    inActiveItem: Image.asset(Assets.icons.pMart.path),
                    activeItem: Image.asset(Assets.icons.pMart.path),
                    itemLabelWidget: Text(
                      "P-Mart",
                      style: TextFontStyle.text14cFFFFFFw500.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    )),
                BottomBarItem(
                    inActiveItem: Image.asset(Assets.icons.service.path),
                    activeItem: Image.asset(Assets.icons.service.path),
                    itemLabelWidget: Text(
                      "Service",
                      style: TextFontStyle.text14cFFFFFFw500.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    )),
                BottomBarItem(
                    inActiveItem: Image.asset(Assets.icons.petLeg.path),
                    activeItem: Image.asset(Assets.icons.petLeg.path),
                    itemLabelWidget: Text(
                      "Pet",
                      style: TextFontStyle.text14cFFFFFFw500.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    )),
              ],
              onTap: (index) {
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
    );
  }
}

/// add controller to check weather index through change or not. in page

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green, child: const Center(child: Text('Page 2')));
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red, child: const Center(child: Text('Page 3')));
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue, child: const Center(child: Text('Page 4')));
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightGreenAccent,
        child: const Center(child: Text('Page 5')));
  }
}
