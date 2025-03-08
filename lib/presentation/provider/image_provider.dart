

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_app/data/repo/image_repo/image_repo_impl.dart';
import 'package:image_app/data/source/remote/image_source/image_data_source_impl.dart';
import 'package:image_app/domain/repo/image/image_repo.dart';
import 'package:image_app/domain/source/remote/image/image_data_source.dart';

final imageDataSourceProvider = Provider<ImageDataSource>((ref) {
  return ImageDataSourceImpl();
});

// Repository Provider
final imageRepoProvider = Provider<ImageRepo>((ref) {
  final dataSource = ref.watch(imageDataSourceProvider);
  return ImageRepoImpl(dataSource);
});


final searchQueryProvider = StateProvider<String>((ref) => '');
