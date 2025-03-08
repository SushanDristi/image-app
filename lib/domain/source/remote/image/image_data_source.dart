

import 'package:image_app/data/model/image/image_model.dart';

abstract class ImageDataSource{
  Future<ImageModel> getImages({required Map<String, dynamic> params});
}