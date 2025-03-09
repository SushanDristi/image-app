// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  int? get total => throw _privateConstructorUsedError;
  int? get totalHits => throw _privateConstructorUsedError;
  List<Hit>? get hits => throw _privateConstructorUsedError;

  /// Serializes this ImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
    ImageModel value,
    $Res Function(ImageModel) then,
  ) = _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call({int? total, int? totalHits, List<Hit>? hits});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(
      _value.copyWith(
            total:
                freezed == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalHits:
                freezed == totalHits
                    ? _value.totalHits
                    : totalHits // ignore: cast_nullable_to_non_nullable
                        as int?,
            hits:
                freezed == hits
                    ? _value.hits
                    : hits // ignore: cast_nullable_to_non_nullable
                        as List<Hit>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImageModelImplCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$ImageModelImplCopyWith(
    _$ImageModelImpl value,
    $Res Function(_$ImageModelImpl) then,
  ) = __$$ImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, int? totalHits, List<Hit>? hits});
}

/// @nodoc
class __$$ImageModelImplCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$ImageModelImpl>
    implements _$$ImageModelImplCopyWith<$Res> {
  __$$ImageModelImplCopyWithImpl(
    _$ImageModelImpl _value,
    $Res Function(_$ImageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(
      _$ImageModelImpl(
        total:
            freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalHits:
            freezed == totalHits
                ? _value.totalHits
                : totalHits // ignore: cast_nullable_to_non_nullable
                    as int?,
        hits:
            freezed == hits
                ? _value._hits
                : hits // ignore: cast_nullable_to_non_nullable
                    as List<Hit>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageModelImpl implements _ImageModel {
  const _$ImageModelImpl({this.total, this.totalHits, final List<Hit>? hits})
    : _hits = hits;

  factory _$ImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageModelImplFromJson(json);

  @override
  final int? total;
  @override
  final int? totalHits;
  final List<Hit>? _hits;
  @override
  List<Hit>? get hits {
    final value = _hits;
    if (value == null) return null;
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImageModel(total: $total, totalHits: $totalHits, hits: $hits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalHits, totalHits) ||
                other.totalHits == totalHits) &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    totalHits,
    const DeepCollectionEquality().hash(_hits),
  );

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      __$$ImageModelImplCopyWithImpl<_$ImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModelImplToJson(this);
  }
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel({
    final int? total,
    final int? totalHits,
    final List<Hit>? hits,
  }) = _$ImageModelImpl;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$ImageModelImpl.fromJson;

  @override
  int? get total;
  @override
  int? get totalHits;
  @override
  List<Hit>? get hits;

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hit _$HitFromJson(Map<String, dynamic> json) {
  return _Hit.fromJson(json);
}

/// @nodoc
mixin _$Hit {
  int? get id => throw _privateConstructorUsedError;
  String? get pageURL => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get previewURL => throw _privateConstructorUsedError;
  int? get previewWidth => throw _privateConstructorUsedError;
  int? get previewHeight => throw _privateConstructorUsedError;
  String? get webformatURL => throw _privateConstructorUsedError;
  int? get webformatWidth => throw _privateConstructorUsedError;
  int? get webformatHeight => throw _privateConstructorUsedError;
  String? get largeImageURL => throw _privateConstructorUsedError;
  String? get fullHDURL => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;
  int? get imageWidth => throw _privateConstructorUsedError;
  int? get imageHeight => throw _privateConstructorUsedError;
  int? get imageSize => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  int? get downloads => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  int? get comments => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get userImageURL => throw _privateConstructorUsedError;

  /// Serializes this Hit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HitCopyWith<Hit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitCopyWith<$Res> {
  factory $HitCopyWith(Hit value, $Res Function(Hit) then) =
      _$HitCopyWithImpl<$Res, Hit>;
  @useResult
  $Res call({
    int? id,
    String? pageURL,
    String? type,
    String? tags,
    String? previewURL,
    int? previewWidth,
    int? previewHeight,
    String? webformatURL,
    int? webformatWidth,
    int? webformatHeight,
    String? largeImageURL,
    String? fullHDURL,
    String? imageURL,
    int? imageWidth,
    int? imageHeight,
    int? imageSize,
    int? views,
    int? downloads,
    int? likes,
    int? comments,
    int? user_id,
    String? user,
    String? userImageURL,
  });
}

/// @nodoc
class _$HitCopyWithImpl<$Res, $Val extends Hit> implements $HitCopyWith<$Res> {
  _$HitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageURL = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewURL = freezed,
    Object? previewWidth = freezed,
    Object? previewHeight = freezed,
    Object? webformatURL = freezed,
    Object? webformatWidth = freezed,
    Object? webformatHeight = freezed,
    Object? largeImageURL = freezed,
    Object? fullHDURL = freezed,
    Object? imageURL = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? imageSize = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? user_id = freezed,
    Object? user = freezed,
    Object? userImageURL = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            pageURL:
                freezed == pageURL
                    ? _value.pageURL
                    : pageURL // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            tags:
                freezed == tags
                    ? _value.tags
                    : tags // ignore: cast_nullable_to_non_nullable
                        as String?,
            previewURL:
                freezed == previewURL
                    ? _value.previewURL
                    : previewURL // ignore: cast_nullable_to_non_nullable
                        as String?,
            previewWidth:
                freezed == previewWidth
                    ? _value.previewWidth
                    : previewWidth // ignore: cast_nullable_to_non_nullable
                        as int?,
            previewHeight:
                freezed == previewHeight
                    ? _value.previewHeight
                    : previewHeight // ignore: cast_nullable_to_non_nullable
                        as int?,
            webformatURL:
                freezed == webformatURL
                    ? _value.webformatURL
                    : webformatURL // ignore: cast_nullable_to_non_nullable
                        as String?,
            webformatWidth:
                freezed == webformatWidth
                    ? _value.webformatWidth
                    : webformatWidth // ignore: cast_nullable_to_non_nullable
                        as int?,
            webformatHeight:
                freezed == webformatHeight
                    ? _value.webformatHeight
                    : webformatHeight // ignore: cast_nullable_to_non_nullable
                        as int?,
            largeImageURL:
                freezed == largeImageURL
                    ? _value.largeImageURL
                    : largeImageURL // ignore: cast_nullable_to_non_nullable
                        as String?,
            fullHDURL:
                freezed == fullHDURL
                    ? _value.fullHDURL
                    : fullHDURL // ignore: cast_nullable_to_non_nullable
                        as String?,
            imageURL:
                freezed == imageURL
                    ? _value.imageURL
                    : imageURL // ignore: cast_nullable_to_non_nullable
                        as String?,
            imageWidth:
                freezed == imageWidth
                    ? _value.imageWidth
                    : imageWidth // ignore: cast_nullable_to_non_nullable
                        as int?,
            imageHeight:
                freezed == imageHeight
                    ? _value.imageHeight
                    : imageHeight // ignore: cast_nullable_to_non_nullable
                        as int?,
            imageSize:
                freezed == imageSize
                    ? _value.imageSize
                    : imageSize // ignore: cast_nullable_to_non_nullable
                        as int?,
            views:
                freezed == views
                    ? _value.views
                    : views // ignore: cast_nullable_to_non_nullable
                        as int?,
            downloads:
                freezed == downloads
                    ? _value.downloads
                    : downloads // ignore: cast_nullable_to_non_nullable
                        as int?,
            likes:
                freezed == likes
                    ? _value.likes
                    : likes // ignore: cast_nullable_to_non_nullable
                        as int?,
            comments:
                freezed == comments
                    ? _value.comments
                    : comments // ignore: cast_nullable_to_non_nullable
                        as int?,
            user_id:
                freezed == user_id
                    ? _value.user_id
                    : user_id // ignore: cast_nullable_to_non_nullable
                        as int?,
            user:
                freezed == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as String?,
            userImageURL:
                freezed == userImageURL
                    ? _value.userImageURL
                    : userImageURL // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HitImplCopyWith<$Res> implements $HitCopyWith<$Res> {
  factory _$$HitImplCopyWith(_$HitImpl value, $Res Function(_$HitImpl) then) =
      __$$HitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? pageURL,
    String? type,
    String? tags,
    String? previewURL,
    int? previewWidth,
    int? previewHeight,
    String? webformatURL,
    int? webformatWidth,
    int? webformatHeight,
    String? largeImageURL,
    String? fullHDURL,
    String? imageURL,
    int? imageWidth,
    int? imageHeight,
    int? imageSize,
    int? views,
    int? downloads,
    int? likes,
    int? comments,
    int? user_id,
    String? user,
    String? userImageURL,
  });
}

/// @nodoc
class __$$HitImplCopyWithImpl<$Res> extends _$HitCopyWithImpl<$Res, _$HitImpl>
    implements _$$HitImplCopyWith<$Res> {
  __$$HitImplCopyWithImpl(_$HitImpl _value, $Res Function(_$HitImpl) _then)
    : super(_value, _then);

  /// Create a copy of Hit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageURL = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewURL = freezed,
    Object? previewWidth = freezed,
    Object? previewHeight = freezed,
    Object? webformatURL = freezed,
    Object? webformatWidth = freezed,
    Object? webformatHeight = freezed,
    Object? largeImageURL = freezed,
    Object? fullHDURL = freezed,
    Object? imageURL = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? imageSize = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? user_id = freezed,
    Object? user = freezed,
    Object? userImageURL = freezed,
  }) {
    return _then(
      _$HitImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        pageURL:
            freezed == pageURL
                ? _value.pageURL
                : pageURL // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        tags:
            freezed == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                    as String?,
        previewURL:
            freezed == previewURL
                ? _value.previewURL
                : previewURL // ignore: cast_nullable_to_non_nullable
                    as String?,
        previewWidth:
            freezed == previewWidth
                ? _value.previewWidth
                : previewWidth // ignore: cast_nullable_to_non_nullable
                    as int?,
        previewHeight:
            freezed == previewHeight
                ? _value.previewHeight
                : previewHeight // ignore: cast_nullable_to_non_nullable
                    as int?,
        webformatURL:
            freezed == webformatURL
                ? _value.webformatURL
                : webformatURL // ignore: cast_nullable_to_non_nullable
                    as String?,
        webformatWidth:
            freezed == webformatWidth
                ? _value.webformatWidth
                : webformatWidth // ignore: cast_nullable_to_non_nullable
                    as int?,
        webformatHeight:
            freezed == webformatHeight
                ? _value.webformatHeight
                : webformatHeight // ignore: cast_nullable_to_non_nullable
                    as int?,
        largeImageURL:
            freezed == largeImageURL
                ? _value.largeImageURL
                : largeImageURL // ignore: cast_nullable_to_non_nullable
                    as String?,
        fullHDURL:
            freezed == fullHDURL
                ? _value.fullHDURL
                : fullHDURL // ignore: cast_nullable_to_non_nullable
                    as String?,
        imageURL:
            freezed == imageURL
                ? _value.imageURL
                : imageURL // ignore: cast_nullable_to_non_nullable
                    as String?,
        imageWidth:
            freezed == imageWidth
                ? _value.imageWidth
                : imageWidth // ignore: cast_nullable_to_non_nullable
                    as int?,
        imageHeight:
            freezed == imageHeight
                ? _value.imageHeight
                : imageHeight // ignore: cast_nullable_to_non_nullable
                    as int?,
        imageSize:
            freezed == imageSize
                ? _value.imageSize
                : imageSize // ignore: cast_nullable_to_non_nullable
                    as int?,
        views:
            freezed == views
                ? _value.views
                : views // ignore: cast_nullable_to_non_nullable
                    as int?,
        downloads:
            freezed == downloads
                ? _value.downloads
                : downloads // ignore: cast_nullable_to_non_nullable
                    as int?,
        likes:
            freezed == likes
                ? _value.likes
                : likes // ignore: cast_nullable_to_non_nullable
                    as int?,
        comments:
            freezed == comments
                ? _value.comments
                : comments // ignore: cast_nullable_to_non_nullable
                    as int?,
        user_id:
            freezed == user_id
                ? _value.user_id
                : user_id // ignore: cast_nullable_to_non_nullable
                    as int?,
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as String?,
        userImageURL:
            freezed == userImageURL
                ? _value.userImageURL
                : userImageURL // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HitImpl implements _Hit {
  const _$HitImpl({
    this.id,
    this.pageURL,
    this.type,
    this.tags,
    this.previewURL,
    this.previewWidth,
    this.previewHeight,
    this.webformatURL,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageURL,
    this.fullHDURL,
    this.imageURL,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.likes,
    this.comments,
    this.user_id,
    this.user,
    this.userImageURL,
  });

  factory _$HitImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitImplFromJson(json);

  @override
  final int? id;
  @override
  final String? pageURL;
  @override
  final String? type;
  @override
  final String? tags;
  @override
  final String? previewURL;
  @override
  final int? previewWidth;
  @override
  final int? previewHeight;
  @override
  final String? webformatURL;
  @override
  final int? webformatWidth;
  @override
  final int? webformatHeight;
  @override
  final String? largeImageURL;
  @override
  final String? fullHDURL;
  @override
  final String? imageURL;
  @override
  final int? imageWidth;
  @override
  final int? imageHeight;
  @override
  final int? imageSize;
  @override
  final int? views;
  @override
  final int? downloads;
  @override
  final int? likes;
  @override
  final int? comments;
  @override
  final int? user_id;
  @override
  final String? user;
  @override
  final String? userImageURL;

  @override
  String toString() {
    return 'Hit(id: $id, pageURL: $pageURL, type: $type, tags: $tags, previewURL: $previewURL, previewWidth: $previewWidth, previewHeight: $previewHeight, webformatURL: $webformatURL, webformatWidth: $webformatWidth, webformatHeight: $webformatHeight, largeImageURL: $largeImageURL, fullHDURL: $fullHDURL, imageURL: $imageURL, imageWidth: $imageWidth, imageHeight: $imageHeight, imageSize: $imageSize, views: $views, downloads: $downloads, likes: $likes, comments: $comments, user_id: $user_id, user: $user, userImageURL: $userImageURL)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageURL, pageURL) || other.pageURL == pageURL) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.previewURL, previewURL) ||
                other.previewURL == previewURL) &&
            (identical(other.previewWidth, previewWidth) ||
                other.previewWidth == previewWidth) &&
            (identical(other.previewHeight, previewHeight) ||
                other.previewHeight == previewHeight) &&
            (identical(other.webformatURL, webformatURL) ||
                other.webformatURL == webformatURL) &&
            (identical(other.webformatWidth, webformatWidth) ||
                other.webformatWidth == webformatWidth) &&
            (identical(other.webformatHeight, webformatHeight) ||
                other.webformatHeight == webformatHeight) &&
            (identical(other.largeImageURL, largeImageURL) ||
                other.largeImageURL == largeImageURL) &&
            (identical(other.fullHDURL, fullHDURL) ||
                other.fullHDURL == fullHDURL) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.imageWidth, imageWidth) ||
                other.imageWidth == imageWidth) &&
            (identical(other.imageHeight, imageHeight) ||
                other.imageHeight == imageHeight) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userImageURL, userImageURL) ||
                other.userImageURL == userImageURL));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    pageURL,
    type,
    tags,
    previewURL,
    previewWidth,
    previewHeight,
    webformatURL,
    webformatWidth,
    webformatHeight,
    largeImageURL,
    fullHDURL,
    imageURL,
    imageWidth,
    imageHeight,
    imageSize,
    views,
    downloads,
    likes,
    comments,
    user_id,
    user,
    userImageURL,
  ]);

  /// Create a copy of Hit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HitImplCopyWith<_$HitImpl> get copyWith =>
      __$$HitImplCopyWithImpl<_$HitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitImplToJson(this);
  }
}

abstract class _Hit implements Hit {
  const factory _Hit({
    final int? id,
    final String? pageURL,
    final String? type,
    final String? tags,
    final String? previewURL,
    final int? previewWidth,
    final int? previewHeight,
    final String? webformatURL,
    final int? webformatWidth,
    final int? webformatHeight,
    final String? largeImageURL,
    final String? fullHDURL,
    final String? imageURL,
    final int? imageWidth,
    final int? imageHeight,
    final int? imageSize,
    final int? views,
    final int? downloads,
    final int? likes,
    final int? comments,
    final int? user_id,
    final String? user,
    final String? userImageURL,
  }) = _$HitImpl;

  factory _Hit.fromJson(Map<String, dynamic> json) = _$HitImpl.fromJson;

  @override
  int? get id;
  @override
  String? get pageURL;
  @override
  String? get type;
  @override
  String? get tags;
  @override
  String? get previewURL;
  @override
  int? get previewWidth;
  @override
  int? get previewHeight;
  @override
  String? get webformatURL;
  @override
  int? get webformatWidth;
  @override
  int? get webformatHeight;
  @override
  String? get largeImageURL;
  @override
  String? get fullHDURL;
  @override
  String? get imageURL;
  @override
  int? get imageWidth;
  @override
  int? get imageHeight;
  @override
  int? get imageSize;
  @override
  int? get views;
  @override
  int? get downloads;
  @override
  int? get likes;
  @override
  int? get comments;
  @override
  int? get user_id;
  @override
  String? get user;
  @override
  String? get userImageURL;

  /// Create a copy of Hit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HitImplCopyWith<_$HitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
