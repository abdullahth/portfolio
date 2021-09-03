import 'package:flutter/material.dart';

enum AppIcons { facebook, linkedIn }

extension ext on AppIcons {
  AssetImage get provider {
    switch (this) {
      case AppIcons.facebook:
        return AssetImage('icons/facebook.png');
      case AppIcons.linkedIn:
        return AssetImage('icons/linkedin.png');
    }
  }
}
