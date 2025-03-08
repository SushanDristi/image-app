// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:image_app/navigation/app_router.dart' as _i1;
import 'package:image_app/presentation/favourite/favourite_screen.dart' as _i2;
import 'package:image_app/presentation/home/home_screen.dart' as _i3;

/// generated route for
/// [_i1.EmptyRouterPage]
class EmptyRouter extends _i4.PageRouteInfo<void> {
  const EmptyRouter({List<_i4.PageRouteInfo>? children})
    : super(EmptyRouter.name, initialChildren: children);

  static const String name = 'EmptyRouter';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.EmptyRouterPage();
    },
  );
}

/// generated route for
/// [_i2.FavouriteScreen]
class FavouriteScreen extends _i4.PageRouteInfo<void> {
  const FavouriteScreen({List<_i4.PageRouteInfo>? children})
    : super(FavouriteScreen.name, initialChildren: children);

  static const String name = 'FavouriteScreen';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.FavouriteScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i4.PageRouteInfo<void> {
  const HomeScreen({List<_i4.PageRouteInfo>? children})
    : super(HomeScreen.name, initialChildren: children);

  static const String name = 'HomeScreen';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}
