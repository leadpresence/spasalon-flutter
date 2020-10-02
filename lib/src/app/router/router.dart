import 'package:auto_route/auto_route.dart';
import '../../ui/views/views_import.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: CreatePostView),
  ],
)
class $Router {}
