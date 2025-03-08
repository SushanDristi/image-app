


import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:image_app/base/api/exceptions.dart';
import 'package:image_app/base/api/failure.dart';
import 'package:image_app/data/model/image/image_model.dart';
import 'package:image_app/domain/repo/fav/fav_repo.dart';
import 'package:image_app/domain/source/local/fav/fav_data_source.dart';

class FavRepoImpl extends FavRepo {
  final FavDataSource _favDataSource;

  FavRepoImpl(this._favDataSource);

  @override
  Future<Either<Failure, List<Hit>>> getFavs() async {
    try {
      final result = await _favDataSource.getFavs();
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    } on DioException catch (failure) {
      return Left(ServerFailure(failure.message ?? failure.toString()));
    } catch (e) {
      return Left(JsonFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> addFav(Hit hit) async {
    try {
      final result = await _favDataSource.addFav(hit);
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    } on DioException catch (failure) {
      return Left(ServerFailure(failure.message ?? failure.toString()));
    } catch (e) {
      return Left(JsonFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> clearFavs() async {
    try {
      final result = await _favDataSource.clearFavs();
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    } on DioException catch (failure) {
      return Left(ServerFailure(failure.message ?? failure.toString()));
    } catch (e) {
      return Left(JsonFailure(e.toString()));
    }
  }


  @override
  Future<Either<Failure, bool>> isFav(Hit hit) async {
    try {
      final result = await _favDataSource.isFav(hit);
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    } on DioException catch (failure) {
      return Left(ServerFailure(failure.message ?? failure.toString()));
    } catch (e) {
      return Left(JsonFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> removeFav(Hit hit) async {
    try {
      final result = await _favDataSource.removeFav(hit);
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    } on DioException catch (failure) {
      return Left(ServerFailure(failure.message ?? failure.toString()));
    } catch (e) {
      return Left(JsonFailure(e.toString()));
    }
  }


}