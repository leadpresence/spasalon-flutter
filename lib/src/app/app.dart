import 'package:flutter/material.dart';
import 'package:topshoplekki/src/app/generated/locator/locator.dart';
import 'package:topshoplekki/src/app/generated/router/router.gr.dart';
import 'package:topshoplekki/src/ui/global/custom_base_view_model.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "topshoplekki",
      initialRoute: Routes.startupView,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.amber[00]),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
    );
  }
}
