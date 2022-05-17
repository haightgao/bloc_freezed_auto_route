// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'custom_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LandingPage());
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: DetailPage(key: args.key, dataModel: args.dataModel));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(LandingRoute.name, path: '/'),
        RouteConfig(DetailRoute.name, path: '/detail-page')
      ];
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [DetailPage]
class DetailRoute extends PageRouteInfo<DetailRouteArgs> {
  DetailRoute({Key? key, required DataModel dataModel})
      : super(DetailRoute.name,
            path: '/detail-page',
            args: DetailRouteArgs(key: key, dataModel: dataModel));

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({this.key, required this.dataModel});

  final Key? key;

  final DataModel dataModel;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, dataModel: $dataModel}';
  }
}
