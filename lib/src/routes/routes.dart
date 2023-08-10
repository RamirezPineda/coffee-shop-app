import 'package:flutter/material.dart';

import 'package:coffee_app/src/pages/index.dart';

class Routes {
  static const String home = 'home';
  static const String coffeCard = 'coffe/card';

  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      home: (BuildContext context) => const HomePage(),
    };
  }
}
