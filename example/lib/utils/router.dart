import 'package:flutter/material.dart';
import 'package:tdlib_example/utils/const.dart';
import 'package:tdlib_example/screens/login/login.dart';
import 'package:tdlib_example/screens/login/code_entry.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case otpRoute:
        return MaterialPageRoute(
          builder: (_) => CoodeEntrySreen(),
        );
      case loginRoute:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case initRoute:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Container(
              color: Colors.white,
            ),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text(
              'No route defined for ${settings.name}',
            )),
          ),
        );
    }
  }
}
