import 'package:flutter/material.dart';

import '../components/network_image.dart';
import '../constants/app_colors.dart';
import '../constants/app_defaults.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.placeholder,
      body: Column(
        children: [
          const Expanded(
            flex: 3,
            child: NetworkImageWithLoader(
              'https://elements-cover-images-0.imgix.net/c772921b-a850-4ecc-a7fc-b9bc385d9a60?auto=compress%2Cformat&fit=max&w=1370&s=6e6cbc85090f13cbf5ec7b1c8af55d3f',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Image.asset(
                'assets/images/logo_with_text.png',
                width: 120,
                height: 120,
              ),
            ),
          ),
          const LinearProgressIndicator(),
        ],
      ),
    );
  }
}
