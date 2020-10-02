import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TopshopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // initialRoute: Routes.startupView,
          // onGenerateRoute: Router().onGenerateRoute,
          title: 'Topshop lekki',
          // home: BookingScreen(),
        );
      });
    });
  }
}
