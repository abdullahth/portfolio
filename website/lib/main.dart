import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:website/prefrences/router.dart';
import 'package:website/prefrences/theme.dart';

import 'screens/landing_page/landingPage.dart';

void main() {
  initailizeDims(
    debuggingMobileDeviceHeight: 744,
    debuggingMobileDeviceWidth: 500,
    debuggingTabletDeviceHeight: 744,
    debuggingTabletDeviceWidth: 767.2,
    debuggingDesktopDeviceHeight: 753.6,
    debuggingDesktopDeviceWidth: 1536,
  );

  AppRouter.setUpRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Athena Digital Solutions',
      theme: themeData,
      // darkTheme: darkThemeData,
      onGenerateRoute: AppRouter.router.generator,
      initialRoute: '/',
      home: LandingPage(),
    );
  }
}
