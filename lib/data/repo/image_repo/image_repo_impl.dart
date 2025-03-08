

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:image_app/base/api/base_response_model.dart';
import 'package:image_app/base/api/exceptions.dart';
import 'package:image_app/base/api/failure.dart';
import 'package:image_app/base/api/typedef.dart';
import 'package:image_app/data/model/image/image_model.dart';
import 'package:image_app/domain/repo/image/image_repo.dart';
import 'package:image_app/domain/source/remote/image/image_data_source.dart';

class ImageRepoImpl extends ImageRepo {
  final ImageDataSource _imageDataSource;

  ImageRepoImpl(this._imageDataSource);
  @override
  Future<Either<Failure, ImageModel>> getImages(Map<String,dynamic> params) async {
    try {
      final result = await _imageDataSource.getImages(params: params);
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