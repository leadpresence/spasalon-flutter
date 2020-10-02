import 'package:flutter/material.dart';
import 'home_view_model.dart';
import '../../ui_imports.dart';

import 'package:theme_mode_handler/theme_mode_handler.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (HomeViewModel model) async {},
        builder: (
          BuildContext context,
          HomeViewModel model,
          Widget child,
        ) {
          Container();
        });
  }
}
