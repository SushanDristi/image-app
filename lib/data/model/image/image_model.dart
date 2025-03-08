import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required int total,
    required int totalHits,
    required List<Hit> hits,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);
}

@freezed
class Hit with _$Hit {
  const factory Hit({
    required int id,
    required String pageURL,
    required String type,
    required String tags,
    required String previewURL,
    required int previewWidth,
    required int previewHeight,
    required String webformatURL,
    required int webformatWidth,
    required int webformatHeight,
    required String largeImageURL,
    String? fullHDURL,
    String? imageURL,
    required int imageWidth,
    required int imageHeight,
    required int imageSize,
    required int views,
    required int downloads,
    required int likes,
    required int comments,
    required int user_id,
    required String user,
    required String userImageURL,
  }) = _Hit;

  factory Hit.fromJson(Map<String, dynamic> json) => _$HitFromJson(json);
}
