

import 'package:image_app/base/api/api.dart';
import 'package:image_app/base/api/api_const.dart';
import 'package:image_app/base/api/base_response_model.dart';
import 'package:image_app/base/api/exceptions.dart';
import 'package:image_app/data/model/image/image_model.dart';
import 'package:image_app/domain/source/remote/image/image_data_source.dart';

class ImageDataSourceImpl extends ImageDataSource {

  @override
  Future<ImageModel> getImages({required Map<String, dynamic> params}) async {
    try {
      print("this is data $params");
      final response = await Api().get('', queryParameters: params);

      try {
        return ImageModel.fromJson(response.data);
      } catch (e) {
        throw JsonException(e.toString());
      }
    } catch (e) {
      rethrow;
    }
  }

}

