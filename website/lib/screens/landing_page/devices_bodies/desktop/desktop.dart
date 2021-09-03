import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:website/global-widgets/default-button/default_button.dart';
import 'package:website/prefrences/consts.dart';
import 'package:website/prefrences/enums/assets.dart';
import 'package:website/screens/landing_page/devices_bodies/desktop/components/app_bar.dart';

class DesktopLandingPage extends StatefulWidget {
  @override
  _DesktopLandingPageState createState() => _DesktopLandingPageState();
}

class _DesktopLandingPageState extends State<DesktopLandingPage> {
  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    final theme = Theme.of(context);
    return ListView(
      children: [
        DesktopLandingPageAppBar(),
        SizedBox(
          height: dims.deviceHeight * 0.85,
          width: dims.deviceWidth,
          child: Row(
            children: [
              Expanded(
                child: ResponsivePadding(
                  padding: SymetricPadding(
                      context: context, horizontal: dims.deviceWidth * 0.025),
                  child: Material(
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'We take your business to the next level!',
                          style: TextStyle(
                              color: theme.primaryColor,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w900),
                          maxLines: 2,
                          minFontSize: 48,
                          maxFontSize: 72,
                        ),
                        SizedBox(height: dims.deviceHeight * 0.05),
                        AutoSizeText(
                          companyShortBrief,
                          style: TextStyle(
                            color: theme.accentColor,
                            fontFamily: 'Quicksand',
                          ),
                          maxLines: 16,
                          minFontSize: 16,
                          maxFontSize: 48,
                        ),
                        SizedBox(height: dims.deviceHeight * 0.05),
                        SizedBox(
                          width: dims.deviceHeight * 0.6,
                          height: dims.deviceHeight * 0.15,
                          child: Center(
                            child: Row(
                              children: [
                                DefaultButton(
                                  width: dims.deviceWidth * 0.125,
                                  height: dims.deviceHeight * 0.075,
                                  text: 'Estimate Project',
                                  radius: BorderRadius.circular(
                                      dims.configWidth(5)),
                                  onTap: () {},
                                ),
                                Spacer(),
                                DefaultButton(
                                  width: dims.deviceWidth * 0.125,
                                  height: dims.deviceHeight * 0.075,
                                  textColor: theme.primaryColor,
                                  text: 'View Portfolio',
                                  backgroundColor: Colors.white,
                                  radius: BorderRadius.circular(
                                      dims.configWidth(5)),
                                  onTap: () {},
                                  border: Border.all(
                                      color: theme.primaryColor,
                                      width: dims.configWidth(1)),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: SizedBox(
                    width: dims.deviceWidth * 0.3 + dims.configWidth(29.5),
                    height: dims.deviceWidth * 0.3,
                    child: Stack(
                      children: [
                        Positioned(
                            left: dims.deviceWidth * 0.025,
                            top: dims.deviceWidth * 0.15,
                            child: SizedBox(
                              width: dims.deviceWidth * 0.05,
                              height: dims.deviceWidth * 0.1,
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  List.generate(250, (index) => '.').join(),
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: theme.accentColor.withOpacity(0.2),
                                  ),
                                ),
                              ),
                            )),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(dims.configWidth(10)),
                              topRight: Radius.circular(dims.configWidth(10)),
                              bottomRight:
                                  Radius.circular(dims.configWidth(10)),
                            ),
                            child: Container(
                              width: dims.deviceWidth * 0.3,
                              height: dims.deviceWidth * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: Assets.pc.provider,
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            width: dims.configWidth(100),
                            height: dims.configWidth(50),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Assets.vectorOne.provider,
                                    fit: BoxFit.contain)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
