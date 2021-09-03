import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'devices_bodies/mobile/mobile.dart';
import 'devices_bodies/tablet/tablet.dart';
import 'devices_bodies/desktop/desktop.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    final theme = Theme.of(context);
    return MultiDevice(
      mobile: MobileLandingPage(),
      computer: DesktopLandingPage(),
      tablet: TabletLandingPage(),
    );
  }
}
