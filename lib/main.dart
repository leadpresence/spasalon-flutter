import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:topshoplekki/src/app/utils/topshop_app.dart';
import 'package:topshoplekki/src/app/generated/locator/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Sets logging level
  Logger.level = Level.debug;

  // Register all the models and services before the app starts
  setupLocator();

  runApp(TopshopApp());
}
