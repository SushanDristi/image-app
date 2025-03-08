


import 'package:dartz/dartz.dart';
import 'package:image_app/base/api/failure.dart';
import 'package:image_app/data/model/image/image_model.dart';

abstract class FavRepo {
  Future<Either<Failure, List<Hit>>> getFavs();
  Future<Either<Failure, void>> addFav(Hit hit);
  Future<Either<Failure, void>> removeFav(Hit hit);
  Future<Either<Failure, bool>> isFav(Hit hit);
  Future<Either<Failure, void>> clearFavs();
}
