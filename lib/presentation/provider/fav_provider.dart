


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_app/data/repo/fav_repo/fav_repo_impl.dart';
import 'package:image_app/data/source/local/fav_data_source/fav_data_source_impl.dart';
import 'package:image_app/domain/repo/fav/fav_repo.dart';
import 'package:image_app/domain/source/local/fav/fav_data_source.dart';

final favDataSourceProvider = Provider<FavDataSource>((ref) {
  return FavDataSourceImpl();
});

// Repository Provider
final favRepoProvider = Provider<FavRepo>((ref) {
  final dataSource = ref.watch(favDataSourceProvider);
  return FavRepoImpl(dataSource);
});