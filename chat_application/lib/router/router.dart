import 'package:chat_application/presentation/pages/home.dart';
import 'package:flutter/material.dart';

import '../presentation/pages/login_screen.dart';

class Router {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) =>  LoginScreen(),
        );
        break;

      case '/second':
        return MaterialPageRoute(
          builder: (context) => Home(),
        );
        break;


      default:
        return MaterialPageRoute(builder: (context) => Home());
    }
  }


}
