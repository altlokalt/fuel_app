import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

///import 'package:fuel_app/core/app_export.dart';
export 'package:get/get.dart';
export 'package:fuel_app/localization/app_localization.dart';
export 'package:fuel_app/core/constants/constants.dart';
//export '../utils/image_constant.dart';
//export '../utils/color_constant.dart';
//export '../utils/size_utils.dart';
//export '../utils/pref_utils.dart';
//export 'package:fuel_app/core/utils/initial_bindings.dart';
export 'package:fuel_app/theme/app_style.dart';
export 'package:fuel_app/theme/app_decoration.dart';
export 'package:connectivity_plus/connectivity_plus.dart';
export '../routes/app_routes.dart';
export 'package:fuel_app/views/data/models/selectionPopupModel/selection_popup_model.dart';
export 'package:fuel_app/rawscreens/wefound_page/widgets/custom_image_view.dart';
export 'package:fuel_app/core/errors/exceptions.dart';
export 'package:fuel_app/core/network/network_info.dart';
//export '../utils/logger.dart';
//export '../utils/date_time_utils.dart';

//import '../../core/themes/app_themes.dart';
import '../constants/app_colors.dart';
import '../constants/app_defaults.dart';

class AppTheme {
  static TextStyle defaultTextStyle = GoogleFonts.montserrat();

  static const String chargestationPage = '/chargestation_page';

  static const String wefoundPage = '/wefound_page';

  static const String wefoundContainerScreen = '/wefound_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  /// Light Theme
  static ThemeData get lightTheme => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        textTheme: GoogleFonts.ralewayTextTheme().apply().copyWith(
              headlineSmall: TextStyle(
                color: AppColors.darkGreen,
                fontFamily: defaultTextStyle.fontFamily,
              ),
            ),
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        primaryColor: AppColors.primary,
        cardColor: AppColors.cardColor,
        canvasColor: AppColors.cardColor,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: AppDefaults.borderRadius,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppDefaults.borderRadius,
            borderSide: const BorderSide(color: AppColors.primary),
          ),
          fillColor: AppColors.cardColor,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.scaffoldBackground,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: AppColors.scaffoldBackground,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.scaffoldBackground,
          ),
          iconTheme: IconThemeData(color: AppColors.primary),
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: AppDefaults.padding,
            ),
            shape: const StadiumBorder(),
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.primary,
            side: const BorderSide(color: AppColors.primary),
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: AppDefaults.padding,
            ),
            shape: const StadiumBorder(),
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
            foregroundColor: AppColors.primary,
          ),
        ),
        tabBarTheme: TabBarTheme(
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 2,
            ),
          ),
          labelPadding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.padding,
            vertical: AppDefaults.padding / 1.15,
          ),
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.cardColorDark.withOpacity(0.5),
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: defaultTextStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(),
        ),
        checkboxTheme: const CheckboxThemeData(
          side: BorderSide(
            color: AppColors.scaffoldBackgrounDark,
          ),
        ),
      );

  /// Dark Theme
  static ThemeData get darkTheme => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        textTheme: GoogleFonts.ralewayTextTheme()
            .apply(
              bodyColor: Colors.white,
              displayColor: Colors.white70,
            )
            .copyWith(
              headlineSmall: TextStyle(
                color: AppColors.primary,
                fontFamily: defaultTextStyle.fontFamily,
              ),
            ),
        scaffoldBackgroundColor: AppColors.scaffoldBackgrounDark,
        primaryColor: AppColors.primary,
        cardColor: AppColors.cardColorDark,
        canvasColor: AppColors.cardColorDark,
        inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: AppDefaults.borderRadius,
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: AppDefaults.borderRadius,
              borderSide: const BorderSide(color: AppColors.primary),
            ),
            fillColor: AppColors.cardColorDark,
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            prefixIconColor: Colors.white,
            suffixIconColor: AppColors.primary,
            labelStyle: defaultTextStyle.copyWith(
              color: Colors.white,
            ),
            hintStyle: defaultTextStyle.copyWith(
              color: Colors.white70,
              fontSize: 14,
            ),
            errorStyle: defaultTextStyle.copyWith(
              color: Colors.redAccent,
            )),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.scaffoldBackgrounDark,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: AppColors.scaffoldBackgrounDark,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.scaffoldBackgrounDark,
          ),
          iconTheme: IconThemeData(color: AppColors.primary),
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: AppDefaults.padding,
            ),
            shape: const StadiumBorder(),
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.primary,
            side: const BorderSide(color: AppColors.primary),
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: AppDefaults.padding,
            ),
            shape: const StadiumBorder(),
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primary,
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        tabBarTheme: TabBarTheme(
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 2,
            ),
          ),
          labelPadding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.padding,
            vertical: AppDefaults.padding / 1.15,
          ),
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.cardColorDark.withOpacity(0.5),
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: defaultTextStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(),
        ),
        checkboxTheme: const CheckboxThemeData(
          side: BorderSide(
            color: AppColors.scaffoldBackgrounDark,
          ),
        ),
      );

    ///static List<GetPage> pages = [chargestationPage(name: wefoundContainerScreen,  page: () => chargestationPage(),
     ///   bindings: [ chargestationPageBinding(),   ],   ),
    ///  wefoundPage( name: wefoundContainerScreen, page: () => WefoundContainerScreen(), bindings: [  WefoundContainerBinding(),  ],  ),
     /// appNavigationScreen( name: appNavigationScreen,  page: () => AppNavigationScreen(), bindings: [  AppNavigationBinding(),   ],  ),
    ///  wefoundContainerScreen(   name: initialRoute,  page: () => WefoundContainerScreen(),  bindings: [     WefoundContainerBinding(),    ],  ) ];
}
