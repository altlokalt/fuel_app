import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuel_app/core/app_export.dart';
import 'package:fuel_app/core/utils/initial_bindings.dart';
import 'package:fuel_app/core/utils/logger.dart';
import 'package:fuel_app/main.dart';
import '../../core/components/network_image.dart';
import '../../core/routes/app_routes.dart';
import 'data/onboarding_data.dart';
import 'components/onboarding_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController controller;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  gotoLogin() {
    Navigator.pushNamed(context, AppRoutes.login);
  }

  onNext() {
    if (currentIndex < onboardings.length - 1) {
      controller.nextPage(duration: AppDefaults.duration, curve: Curves.ease);
    } else {
      gotoLogin();
    }
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.55,
            child: PageView.builder(
              controller: controller,
              itemCount: onboardings.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) => NetworkImageWithLoader(
                onboardings[index].imageUrl,
                radius: 0,
              ),
            ),
          ),
          Expanded(
            child: Transform.translate(
              offset: const Offset(0, -40),
              child: OnboardingContent(
                data: onboardings[currentIndex],
                currentIndex: currentIndex,
                onNext: onNext,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// from here trying to send them directly to the pages
// after defining it in main.dart page
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(const MyApp());
  });
}

class Homepage extends StatelessWidget {
  const Homepage(body, {super.key, required AppBar appBar});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      // ignore: prefer_const_constructors
      fallbackLocale: Locale('en', 'US'),
      title: 'fuel_app',
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}
