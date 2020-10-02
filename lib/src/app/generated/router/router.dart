import 'package:auto_route/auto_route_annotations.dart';

import 'package:topshoplekki/src/ui/views/views_import.dart';
import 'package:topshoplekki/src/ui/views/booking_appointment/booking_view.dart';
import 'package:topshoplekki/src/ui/views/login/login_view.dart';
import 'package:topshoplekki/src/ui/views/signUp/signUp_view.dart';
import 'package:topshoplekki/src/ui/views/home/home_view.dart';
import 'package:topshoplekki/src/ui/views/startUp/startUp_view.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartupView, initial: true),
    AdaptiveRoute(page: HomeView),
    AdaptiveRoute(page: SignUpView),
    AdaptiveRoute(page: BookingView),
    AdaptiveRoute(page: LoginView),
  ],
)
class $Router {}
