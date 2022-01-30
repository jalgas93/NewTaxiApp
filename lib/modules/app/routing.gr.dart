// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../taxi/view/dashboard_page.dart';
import '../taxi/view/map_page.dart';
import '../taxi/view/taxi_page.dart';

class Routes {
  static const String dashboardPage = '/';
  static const String taxiPage = '/taxi-page';
  static const String mapPage = '/map-page';
  static const all = <String>{
    dashboardPage,
    taxiPage,
    mapPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.dashboardPage, page: DashboardPage),
    RouteDef(Routes.taxiPage, page: TaxiPage),
    RouteDef(Routes.mapPage, page: MapPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    DashboardPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DashboardPage(),
        settings: data,
      );
    },
    TaxiPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TaxiPage(),
        settings: data,
      );
    },
    MapPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MapPage(),
        settings: data,
      );
    },
  };
}
