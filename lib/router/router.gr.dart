// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../screens/home_view.dart' as _i1;
import '../screens/rocket_detail.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeView());
    },
    RocketDetailRoute.name: (routeData) {
      final args = routeData.argsAs<RocketDetailRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.RocketDetail(key: args.key, rocketId: args.rocketId));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeViewRoute.name, path: '/'),
        _i3.RouteConfig(RocketDetailRoute.name, path: '/rocket-detail')
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeViewRoute extends _i3.PageRouteInfo<void> {
  const HomeViewRoute() : super(HomeViewRoute.name, path: '/');

  static const String name = 'HomeViewRoute';
}

/// generated route for
/// [_i2.RocketDetail]
class RocketDetailRoute extends _i3.PageRouteInfo<RocketDetailRouteArgs> {
  RocketDetailRoute({_i4.Key? key, required String rocketId})
      : super(RocketDetailRoute.name,
            path: '/rocket-detail',
            args: RocketDetailRouteArgs(key: key, rocketId: rocketId));

  static const String name = 'RocketDetailRoute';
}

class RocketDetailRouteArgs {
  const RocketDetailRouteArgs({this.key, required this.rocketId});

  final _i4.Key? key;

  final String rocketId;

  @override
  String toString() {
    return 'RocketDetailRouteArgs{key: $key, rocketId: $rocketId}';
  }
}
