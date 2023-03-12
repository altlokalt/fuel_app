// ignore: unused_import
import 'package:fuel_app/views/screens/wefound_container_screen.dart';
// ignore: unused_import
import 'package:fuel_app/rawscreens/wefound_container_screen/binding/wefound_container_binding.dart';
// ignore: unused_import
//import 'package:fuel_app/views/screens/app_navigation_screen.dart';
// ignore: unused_import
import 'package:fuel_app/rawscreens/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const initial = '/';
  static const welcome = '/welcome';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const signup = '/signup';
  static const forgotPassword = '/forgotPassword';
  static const resetPassword = '/resetPassword';
  static const verifyIdentity = '/verifyIdentity';
  static const termsAndConditions = '/termsAndConditions';

        //from dhwise starts
  static const entryPoint = '/entryPoint';
  static const String chargestationPage = '/chargestation_page';
  static const String wefoundPage = '/wefound_page';
  static const String wefoundContainerScreen = '/wefound_container_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static String initialRoute = '/initialRoute';

        //from dhwise ends

  static const home = '/home';
  static const notifications = '/notifications';
  static const couponDetails = '/couponDetails';
  static const search = '/search';

  static const productDetails = '/productDetails';
  static const productReview = '/productReview';
  static const wishList = '/wishList';
  static const bag = '/bag';
  static const bagCheckout = '/bagCheckout';

  static const orderTracking = '/orderTracking';

  static const profile = '/profile';
  static const notificationsSetting = '/notificationsSetting';
  static const vouchers = '/vouchers';

  static List<GetPage> pages = [
   // GetPage( name: wefoundContainerScreen, bindings: [WefoundContainerBinding(), ], page: () { wefoundContainerScreen; }, ),
   // Widget build(BuildContext context) { return Container(  child: AppNavigationScreen(),  );}
   // GetPage(name: appNavigationScreen, page: () => AppNavigationScreen(),  bindings: [ AppNavigationBinding(),  ],   ),
   // GetPage( name: initialRoute, page: () => WefoundContainerScreen(),  bindings: [ WefoundContainerBinding(),   ], )
  ];
}
