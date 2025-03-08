

import 'package:dartz/dartz.dart';
import 'package:image_app/base/api/failure.dart';
import 'package:image_app/data/model/image/image_model.dart';


abstract class ImageRepo {
  Future<Either<Failure, ImageModel>> getImages(Map<String,dynamic> params);
}