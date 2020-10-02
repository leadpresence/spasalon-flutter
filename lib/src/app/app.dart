import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "topshoplekki",
      // initialRoute: RouterGR.Routes.startupView,
      // onGenerateRoute: RouterGR.Router().onGenerateRoute,
      // navigatorKey: locator<NavigationService>().navigatorKey,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.amber[00]),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
    );
  }
}
