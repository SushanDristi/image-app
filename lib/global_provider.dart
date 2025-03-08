

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'navigation/app_router.dart';


  // final dioProvider = Provider<Dio>((ref) {
  //   return Api.createDio();
  // });

  final appRouterProvider = Provider<AppRouter>((ref) {
    return AppRouter();
  });






