// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:topshoplekki/src/ui/views/views_import.dart';
import 'package:topshoplekki/src/ui/views/booking_appointment/booking_view.dart';
import 'package:topshoplekki/src/ui/views/login/login_view.dart';
import 'package:topshoplekki/src/ui/views/signUp/signUp_view.dart';
import 'package:topshoplekki/src/ui/views/home/home_view.dart';
import 'package:topshoplekki/src/ui/views/startUp/startUp_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String signup = '/signup';
  static const String login = '/login';
  static const String booking = '/booking';
  static const all = <String>{startupView, homeView, signup, login, booking};
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.signup, page: SignUpView),
    RouteDef(Routes.login, page: LoginView),
    RouteDef(Routes.booking, page: LoginView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    LoginView: (data) {
      final args = data.getArgs<FavoritesViewArguments>(
        orElse: () => FavoritesViewArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    SignUpView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SignUpView(),
        settings: data,
      );
    },
    BookingView: (data) {
      final args = data.getArgs<FavoritesViewArguments>(
        orElse: () => FavoritesViewArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => BookingView(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// FavoritesView arguments holder class
class FavoritesViewArguments {
  final Key key;
  FavoritesViewArguments({this.key});
}
