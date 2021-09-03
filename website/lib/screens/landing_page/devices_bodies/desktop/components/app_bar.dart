import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:website/global-widgets/default-button/default_button.dart';
import 'package:website/prefrences/enums/assets.dart';
import 'package:website/prefrences/enums/icons.dart';

class DesktopLandingPageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    final theme = Theme.of(context);
    return SizedBox(
      width: dims.deviceWidth,
      height: dims.deviceHeight * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: dims.deviceWidth * 0.025),
          Container(
            width: dims.deviceHeight * 0.06,
            height: dims.deviceHeight * 0.06,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Assets.symbol.provider, fit: BoxFit.contain)),
          ),
          SizedBox(width: dims.configWidth(2)),
          SizedBox(
              height: dims.deviceHeight * 0.03,
              child: VerticalDivider(
                  color: theme.accentColor, width: dims.configWidth(1))),
          SizedBox(width: dims.configWidth(2)),
          Container(
            height: dims.deviceHeight * 0.06,
            width: dims.deviceHeight * 0.12,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Assets.logoWhiteTypo.provider, fit: BoxFit.contain)),
          ),
          Spacer(),
          DefaultButton(
            text: 'About',
            width: dims.deviceWidth * 0.07,
            height: dims.deviceHeight * 0.1,
            onTap: () {},
            backgroundColor: Colors.transparent,
            textColor: theme.primaryColor,
          ),
          DefaultButton(
            text: 'Services',
            width: dims.deviceWidth * 0.07,
            height: dims.deviceHeight * 0.1,
            onTap: () {},
            backgroundColor: Colors.transparent,
            textColor: theme.primaryColor,
          ),
          DefaultButton(
            text: 'Products',
            width: dims.deviceWidth * 0.07,
            height: dims.deviceHeight * 0.1,
            onTap: () {},
            backgroundColor: Colors.transparent,
            textColor: theme.primaryColor,
          ),
          DefaultButton(
            text: 'Clients',
            width: dims.deviceWidth * 0.07,
            height: dims.deviceHeight * 0.1,
            onTap: () {},
            backgroundColor: Colors.transparent,
            textColor: theme.primaryColor,
          ),
          DefaultButton(
            text: 'Testmonials',
            width: dims.deviceWidth * 0.07,
            height: dims.deviceHeight * 0.1,
            onTap: () {},
            backgroundColor: Colors.transparent,
            textColor: theme.primaryColor,
          ),
          // SizedBox(width: dims.configWidth(4)),
          // SizedBox(
          //   height: dims.deviceHeight * 0.025,
          //   child: VerticalDivider(
          //       color: theme.primaryColor, width: dims.configHeight(1)),
          // ),
          // SizedBox(width: dims.configWidth(4)),
          DefaultButton(
            text: 'Academy',
            width: dims.deviceWidth * 0.07,
            height: dims.deviceHeight * 0.1,
            onTap: () {},
            backgroundColor: Colors.transparent,
            textColor: theme.primaryColor,
          ),
          DefaultButton(
            text: 'Blog',
            width: dims.deviceWidth * 0.07,
            height: dims.deviceHeight * 0.1,
            onTap: () {},
            backgroundColor: Colors.transparent,
            textColor: theme.primaryColor,
          ),
          SizedBox(width: dims.configWidth(4)),
          SizedBox(
            height: dims.deviceHeight * 0.025,
            child: VerticalDivider(
                color: theme.primaryColor, width: dims.configHeight(1)),
          ),
          SizedBox(width: dims.configWidth(4)),
          Material(
            color: Colors.transparent,
            child: IconButton(
                onPressed: () {},
                icon: Container(
                  width: dims.configWidth(25),
                  height: dims.configHeight(25),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AppIcons.facebook.provider,
                          fit: BoxFit.cover)),
                )),
          ),
          SizedBox(width: dims.configWidth(4)),
          Material(
            color: Colors.transparent,
            child: IconButton(
                onPressed: () {},
                icon: Container(
                  width: dims.configWidth(25),
                  height: dims.configHeight(25),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AppIcons.linkedIn.provider,
                          fit: BoxFit.cover)),
                )),
          ),
          SizedBox(width: dims.deviceWidth * 0.025),
        ],
      ),
    );
  }
}
