import 'package:auto_route/auto_route.dart';
import 'package:image_app/navigation/app_router.gr.dart';

import 'app_router_path.dart';

@RoutePage(name: 'EmptyRouter')
class EmptyRouterPage extends AutoRouter {
  const EmptyRouterPage({super.key});
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            initial: true,
            page: HomeScreen.page,
            path: AppRouterPath.homePath),
        AutoRoute(
            page: FavouriteScreen.page, path: AppRouterPath.favouritePath),

      ];
}




