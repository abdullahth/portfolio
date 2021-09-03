import 'package:flutter/material.dart';

enum Assets {
  logo,
  logoTypo,
  logoWhiteTypo,
  laptop,
  pc,
  symbol,
  symbolWhite,

  // Vectors
  vectorOne
}

extension ext on Assets {
  AssetImage get provider {
    switch (this) {
      case Assets.laptop:
        return AssetImage('laptop-mockup.png');
      case Assets.pc:
        return AssetImage('pc-mockup.jpg');
      case Assets.logo:
        return AssetImage('assets/profile-png.png');
      case Assets.logoWhiteTypo:
        return AssetImage('assets/logo-defualt.png');
      case Assets.logoTypo:
        return AssetImage('assets/logo-acc-color.png');
      case Assets.symbol:
        return AssetImage('assets/symbol-acc-color.png');
      case Assets.symbolWhite:
        return AssetImage('assets/symbol-white.png');

      case Assets.vectorOne:
        return AssetImage('assets/vector-one.png');
    }
  }
}
