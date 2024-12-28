import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ns_pet_app/gen/colors.gen.dart';
import 'package:ns_pet_app/helpers/all_routes.dart';
import 'package:ns_pet_app/helpers/nevigation_service.dart';
import 'package:ns_pet_app/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        showPerformanceOverlay: false,
        theme: ThemeData(
            // primarySwatch: CustomTheme.kToDark,
            useMaterial3: false,
            scaffoldBackgroundColor: AppColors.bgColor),
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          return MediaQuery(data: MediaQuery.of(context), child: widget!);
        },
        navigatorKey: NavigationService.navigatorKey,
        onGenerateRoute: RouteGenerator.generateRoute,
        home: const WelcomeScreen(),
      ),
    );
  }
}
