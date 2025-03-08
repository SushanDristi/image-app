
import 'dart:convert';

import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:image_app/base/utils/app_const.dart';
import 'package:image_app/data/model/image/image_model.dart';
import 'package:image_app/domain/source/local/fav/fav_data_source.dart';

class FavDataSourceImpl extends FavDataSource {

  Future<Box<String>> _openBox() async {
    return await Hive.openBox<String>('favBox'); // Store as String
  }

  @override
  Future<List<Hit>> getFavs() async {
    final box = await _openBox();
    return box.values.map((e) => Hit.fromJson(jsonDecode(e))).toList();
  }

  @override
  Future<void> addFav(Hit hit) async {
    final box = await _openBox();
    await box.put(hit.id, jsonEncode(hit.toJson())); // Store as JSON string
  }

  @override
  Future<void> removeFav(Hit hit) async {
    final box = await _openBox();
    await box.delete(hit.id);
  }

  @override
  Future<bool> isFav(Hit hit) async {
    final box = await _openBox();
    return box.containsKey(hit.id);
  }

  @override
  Future<void> clearFavs() async {
    final box = await _openBox();
    await box.clear();
  }
}
