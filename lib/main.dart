import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:topshoplekki/src/app/app.dart';
import 'src/ui/global/view_config.dart';
import 'src/ui/views/views_import.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(Topshop());
}

class Topshop extends StatelessWidget {
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
          initialRoute: Routes.startupView,
          onGenerateRoute: Router().onGenerateRoute,
          title: 'Topshop lekki',
          home: BookingScreen(),
        );
      });
    });
  }
}
