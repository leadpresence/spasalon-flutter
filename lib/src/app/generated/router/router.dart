import 'package:auto_route/auto_route_annotations.dart';
import 'package:topshoplekki/src/ui/views/views_import.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartupView, path: '/', initial: true),
    AdaptiveRoute(page: HomeView, path: '/home'),
    AdaptiveRoute(page: SignUpView, path: '/signUp'),
    AdaptiveRoute(page: BookingView, path: '/signUp'),
    AdaptiveRoute(page: LoginView, path: '/login'), //BookingView
  ],
)
class $Router {}
