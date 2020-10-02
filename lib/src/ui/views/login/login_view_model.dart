import 'package:topshoplekki/src/ui/ui_imports.dart';
// import 'package:compound/src/ui/global/custom_base_view_model.dart';
import 'package:flutter/foundation.dart';

class LoginViewModel extends BaseViewModel {
  Future login({
    @required String email,
    @required password,
  }) async {
    setBusy(true);

    var result = await authenticationService.loginWithEmail(
      email: email,
      password: password,
    );

    if (result is bool) {
      if (result) {
        await analyticsService.logLogin();
        await navigationService.pushNamedAndRemoveUntil(Routes.homeView);
      } else {
        await dialogService.showDialog(
          title: 'Login Failure',
          description: 'General login failure. Please try again later!',
        );
      }
    } else {
      await dialogService.showDialog(
        title: 'Login Failure',
        description: result,
      );
    }

    setBusy(false);
  }

  Future navigateToSignupView() async {
    await navigationService.pushNamedAndRemoveUntil(Routes.signUpView);
  }
}
