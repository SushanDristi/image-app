// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      total: (json['total'] as num?)?.toInt(),
      totalHits: (json['totalHits'] as num?)?.toInt(),
      hits:
          (json['hits'] as List<dynamic>?)
              ?.map((e) => Hit.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits,
    };

_$HitImpl _$$HitImplFromJson(Map<String, dynamic> json) => _$HitImpl(
  id: (json['id'] as num?)?.toInt(),
  pageURL: json['pageURL'] as String?,
  type: json['type'] as String?,
  tags: json['tags'] as String?,
  previewURL: json['previewURL'] as String?,
  previewWidth: (json['previewWidth'] as num?)?.toInt(),
  previewHeight: (json['previewHeight'] as num?)?.toInt(),
  webformatURL: json['webformatURL'] as String?,
  webformatWidth: (json['webformatWidth'] as num?)?.toInt(),
  webformatHeight: (json['webformatHeight'] as num?)?.toInt(),
  largeImageURL: json['largeImageURL'] as String?,
  fullHDURL: json['fullHDURL'] as String?,
  imageURL: json['imageURL'] as String?,
  imageWidth: (json['imageWidth'] as num?)?.toInt(),
  imageHeight: (json['imageHeight'] as num?)?.toInt(),
  imageSize: (json['imageSize'] as num?)?.toInt(),
  views: (json['views'] as num?)?.toInt(),
  downloads: (json['downloads'] as num?)?.toInt(),
  likes: (json['likes'] as num?)?.toInt(),
  comments: (json['comments'] as num?)?.toInt(),
  user_id: (json['user_id'] as num?)?.toInt(),
  user: json['user'] as String?,
  userImageURL: json['userImageURL'] as String?,
);

Map<String, dynamic> _$$HitImplToJson(_$HitImpl instance) => <String, dynamic>{
  'id': instance.id,
  'pageURL': instance.pageURL,
  'type': instance.type,
  'tags': instance.tags,
  'previewURL': instance.previewURL,
  'previewWidth': instance.previewWidth,
  'previewHeight': instance.previewHeight,
  'webformatURL': instance.webformatURL,
  'webformatWidth': instance.webformatWidth,
  'webformatHeight': instance.webformatHeight,
  'largeImageURL': instance.largeImageURL,
  'fullHDURL': instance.fullHDURL,
  'imageURL': instance.imageURL,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
  'imageSize': instance.imageSize,
  'views': instance.views,
  'downloads': instance.downloads,
  'likes': instance.likes,
  'comments': instance.comments,
  'user_id': instance.user_id,
  'user': instance.user,
  'userImageURL': instance.userImageURL,
};
