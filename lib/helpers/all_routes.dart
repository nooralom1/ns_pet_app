import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:ns_pet_app/feature/fashion_details/screen/fashion_details_screen.dart';
import 'package:ns_pet_app/feature/home/screen/home.dart';
import 'package:ns_pet_app/welcome_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String welcomeScreen = '/Welcome';
  static const String homeScreen = '/home';
  static const String fashionDetails = '/fashionDetails';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcomeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const WelcomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const WelcomeScreen());
      // case Routes.signUpScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: SignupScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => SignupScreen());
      // case Routes.signInScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: SignInScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => SignInScreen());
      // case Routes.forgotPasswordScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ForgotPasswordScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => ForgotPasswordScreen());
      // case Routes.optScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: OtpVerificationScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => OtpVerificationScreen());
      // case Routes.changePasswordScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ChangePasswordScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => ChangePasswordScreen());
      // case Routes.navigationScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const NavigationScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const NavigationScreen());
      // case Routes.addEvent:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget:  AddEventScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) =>  AddEventScreen());
      // case Routes.eventDetails:
      //  final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget:   EventDetailsScreen(eventId: args['id'], isMyEvent: args['isMyEvent']?? false,), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) =>  EventDetailsScreen(eventId: args['id'],isMyEvent: args['isMyEvent']?? false ));
      // case Routes.searchScreen:
      //  final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget:   SearchScreen(location: args['location'], date: args['date'], title:args['title'],), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) =>  SearchScreen(location: args['location'], date: args['date'], title:args['title'],));
      // case Routes.categorywiseEvent:
      // final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget:   CategorywiseEventScreen(title: args['title'], gameId: args['gameId'], ), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) =>  CategorywiseEventScreen(title: args['title'], gameId: args['gameId'],));
      // case Routes.signInScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: const LoginScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const LoginScreen());
      // case Routes.signUpScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: const SignUpScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const SignUpScreen());
      // case Routes.forgotPasswordScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: const ForgotPasswordScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const ForgotPasswordScreen());
      // case Routes.optScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: const OtpScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const OtpScreen());
      // case Routes.newPasswordScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: const NewPasswordScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const NewPasswordScreen());
      case Routes.homeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const HomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const HomeScreen());
      case Routes.fashionDetails:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const FashionDetailsScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const FashionDetailsScreen());


      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
