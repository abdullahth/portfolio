import 'package:fluro/fluro.dart';
import 'package:website/screens/landing_page/landingPage.dart';

class AppRouter {
  static final FluroRouter router = FluroRouter();

  static void setUpRouter() {
    router.define('/', handler: Handler(handlerFunc: (_, __) => LandingPage()));
    router.define('/home/',
        handler: Handler(handlerFunc: (_, __) => LandingPage()));
  }
}
