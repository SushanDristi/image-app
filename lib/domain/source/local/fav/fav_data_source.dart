
import 'package:image_app/data/model/image/image_model.dart';

abstract class FavDataSource {
  Future<List<Hit>> getFavs();
  Future<void> addFav(Hit hit);
  Future<void> removeFav(Hit hit);
  Future<bool> isFav(Hit hit);
  Future<void> clearFavs();
}