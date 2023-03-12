import 'package:fuel_app/core/app/initial_view.dart';
import 'package:fuel_app/core/app/loading_page.dart';
import 'package:fuel_app/views/auth/forgot_password_page.dart';
import 'package:fuel_app/views/auth/login_page.dart';
import 'package:fuel_app/views/auth/reset_password_page.dart';
import 'package:fuel_app/views/auth/signup_page.dart';
import 'package:fuel_app/views/auth/terms_and_conditions_page.dart';
import 'package:fuel_app/views/auth/verify_your_identity_page.dart';
import 'package:fuel_app/views/entrypoint/entrypoint_page.dart';
import 'package:fuel_app/views/onboarding/onboarding_page.dart';
import 'package:flutter/cupertino.dart';

//import 'package:fuel_app/presentation/wefound_container_screen/wefound_container_screen.dart';
//import 'package:fuel_app/presentation/wefound_container_screen/binding/wefound_container_binding.dart';
//import 'package:fuel_app/presentation/app_navigation_screen/app_navigation_screen.dart';
//import 'package:fuel_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
//import 'package:get/get.dart';
import 'app_routes.dart';
//import 'unknown_page.dart';

class RouteGenerator {
  static Route? onGenerate(RouteSettings settings) {
    final route = settings.name;
   // final Object? args = settings.arguments;

    switch (route) {
      case AppRoutes.initial:
        return CupertinoPageRoute(  builder: (context) => const InitialView(),
        );

      case AppRoutes.onboarding:
        return CupertinoPageRoute( builder: (context) => const OnboardingPage(),
        );

      case AppRoutes.welcome:
        return CupertinoPageRoute( builder: (context) => const LoadingPage(),
        );

      case AppRoutes.login:
        return CupertinoPageRoute( builder: (context) => const LoginPage(),
        );

      case AppRoutes.signup:
        return CupertinoPageRoute( builder: (context) => const SignUpPage(),
        );

      case AppRoutes.entryPoint:
        return CupertinoPageRoute( builder: (context) => const EntrypointPage(),
        );

        //from dhwise starts
      // case '/app_navigation_screen': return CupertinoPageRoute( builder: (context) => const EntrypointPage(),  );

       //case '/productDetails': return CupertinoPageRoute( builder: (context) => const productDetails(),  );

       //case '/wefound_container_screen': return CupertinoPageRoute(builder: (_) => WefoundContainerScreen());
      
       //case '/wefound_page': return CupertinoPageRoute(builder: (_) => wefoundPage());
      
       //case '/chargestation_page':   return CupertinoPageRoute(builder: (_) => chargestationPage());
      
      // case '/productReview':  return CupertinoPageRoute(builder: (_) => productReview());
  //from dhwise ends

      case AppRoutes.forgotPassword:
        return CupertinoPageRoute( builder: (context) => const ForgotPasswordPage(),
        );

      case AppRoutes.verifyIdentity:
        return CupertinoPageRoute( builder: (context) => const VerifyYourIdentityPage(),
        );

      case AppRoutes.resetPassword:
        return CupertinoPageRoute( builder: (context) => const ResetPasswordPage(),
        );

      case AppRoutes.termsAndConditions:
        return CupertinoPageRoute( builder: (context) => const TermsAndConditionsPage(),
        );

//default: return CupertinoPageRoute( builder: (_) => const errorPage( body: Center( child: Text('No route defined for ${settings.name}'),     ), ));
    }
    return null;
  }

}
