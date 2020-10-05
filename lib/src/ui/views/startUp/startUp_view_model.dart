import 'dart:async';
import 'package:topshoplekki/src/ui/global/custom_base_view_model.dart';
import 'package:topshoplekki/src/app/generated/router/router.gr.dart';

class StartupViewModel extends CustomBaseViewModel {
  Future handleStartup() async {
    // Handle Dynamic Links
    // await dynamicLinkService.handleDynamicLinks();
    // Handle Remote Config
    // await remoteConfigService.initialize();
    // Handle Push Notifications
    // await pushNotificationService.initialize();

    var isUserLoggedIn = await authenticationService.isUserLoggedIn();

    if (isUserLoggedIn) {
      await navigateToHomeView();
    } else {
      await navigateToSignUpView();
    }
  }

  Future navigateToHomeView() async {
    await navigationService.pushNamedAndRemoveUntil(Routes.homeView);
  }

  Future navigateToSignUpView() async {
    await navigationService.pushNamedAndRemoveUntil(Routes.signup);
  }

  Future navigateToLoginView() async {
    await navigationService.pushNamedAndRemoveUntil(Routes.login);
  }
}
