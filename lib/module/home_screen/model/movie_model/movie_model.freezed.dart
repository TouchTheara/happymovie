// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  int? get movieID => throw _privateConstructorUsedError;
  String? get movieTitle => throw _privateConstructorUsedError;
  String? get quality => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  List<ServerModel>? get serverList => throw _privateConstructorUsedError;
  List<String>? get categorys => throw _privateConstructorUsedError;
  @JsonKey(name: "wish_list")
  bool? get wishList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res>;
  $Res call(
      {int? movieID,
      String? movieTitle,
      String? quality,
      double? rate,
      String? imageUrl,
      String? thumbnailUrl,
      String? releaseDate,
      String? overview,
      List<ServerModel>? serverList,
      List<String>? categorys,
      @JsonKey(name: "wish_list") bool? wishList});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  final MovieModel _value;
  // ignore: unused_field
  final $Res Function(MovieModel) _then;

  @override
  $Res call({
    Object? movieID = freezed,
    Object? movieTitle = freezed,
    Object? quality = freezed,
    Object? rate = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? releaseDate = freezed,
    Object? overview = freezed,
    Object? serverList = freezed,
    Object? categorys = freezed,
    Object? wishList = freezed,
  }) {
    return _then(_value.copyWith(
      movieID: movieID == freezed
          ? _value.movieID
          : movieID // ignore: cast_nullable_to_non_nullable
              as int?,
      movieTitle: movieTitle == freezed
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      serverList: serverList == freezed
          ? _value.serverList
          : serverList // ignore: cast_nullable_to_non_nullable
              as List<ServerModel>?,
      categorys: categorys == freezed
          ? _value.categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      wishList: wishList == freezed
          ? _value.wishList
          : wishList // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieModelCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$_MovieModelCopyWith(
          _$_MovieModel value, $Res Function(_$_MovieModel) then) =
      __$$_MovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? movieID,
      String? movieTitle,
      String? quality,
      double? rate,
      String? imageUrl,
      String? thumbnailUrl,
      String? releaseDate,
      String? overview,
      List<ServerModel>? serverList,
      List<String>? categorys,
      @JsonKey(name: "wish_list") bool? wishList});
}

/// @nodoc
class __$$_MovieModelCopyWithImpl<$Res> extends _$MovieModelCopyWithImpl<$Res>
    implements _$$_MovieModelCopyWith<$Res> {
  __$$_MovieModelCopyWithImpl(
      _$_MovieModel _value, $Res Function(_$_MovieModel) _then)
      : super(_value, (v) => _then(v as _$_MovieModel));

  @override
  _$_MovieModel get _value => super._value as _$_MovieModel;

  @override
  $Res call({
    Object? movieID = freezed,
    Object? movieTitle = freezed,
    Object? quality = freezed,
    Object? rate = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? releaseDate = freezed,
    Object? overview = freezed,
    Object? serverList = freezed,
    Object? categorys = freezed,
    Object? wishList = freezed,
  }) {
    return _then(_$_MovieModel(
      movieID: movieID == freezed
          ? _value.movieID
          : movieID // ignore: cast_nullable_to_non_nullable
              as int?,
      movieTitle: movieTitle == freezed
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      serverList: serverList == freezed
          ? _value._serverList
          : serverList // ignore: cast_nullable_to_non_nullable
              as List<ServerModel>?,
      categorys: categorys == freezed
          ? _value._categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      wishList: wishList == freezed
          ? _value.wishList
          : wishList // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieModel implements _MovieModel {
  const _$_MovieModel(
      {this.movieID,
      this.movieTitle,
      this.quality,
      this.rate,
      this.imageUrl,
      this.thumbnailUrl,
      this.releaseDate,
      this.overview,
      final List<ServerModel>? serverList,
      final List<String>? categorys,
      @JsonKey(name: "wish_list") this.wishList})
      : _serverList = serverList,
        _categorys = categorys;

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  final int? movieID;
  @override
  final String? movieTitle;
  @override
  final String? quality;
  @override
  final double? rate;
  @override
  final String? imageUrl;
  @override
  final String? thumbnailUrl;
  @override
  final String? releaseDate;
  @override
  final String? overview;
  final List<ServerModel>? _serverList;
  @override
  List<ServerModel>? get serverList {
    final value = _serverList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _categorys;
  @override
  List<String>? get categorys {
    final value = _categorys;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "wish_list")
  final bool? wishList;

  @override
  String toString() {
    return 'MovieModel(movieID: $movieID, movieTitle: $movieTitle, quality: $quality, rate: $rate, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, releaseDate: $releaseDate, overview: $overview, serverList: $serverList, categorys: $categorys, wishList: $wishList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieModel &&
            const DeepCollectionEquality().equals(other.movieID, movieID) &&
            const DeepCollectionEquality()
                .equals(other.movieTitle, movieTitle) &&
            const DeepCollectionEquality().equals(other.quality, quality) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailUrl, thumbnailUrl) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other._serverList, _serverList) &&
            const DeepCollectionEquality()
                .equals(other._categorys, _categorys) &&
            const DeepCollectionEquality().equals(other.wishList, wishList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movieID),
      const DeepCollectionEquality().hash(movieTitle),
      const DeepCollectionEquality().hash(quality),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(thumbnailUrl),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(_serverList),
      const DeepCollectionEquality().hash(_categorys),
      const DeepCollectionEquality().hash(wishList));

  @JsonKey(ignore: true)
  @override
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      __$$_MovieModelCopyWithImpl<_$_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(this);
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {final int? movieID,
      final String? movieTitle,
      final String? quality,
      final double? rate,
      final String? imageUrl,
      final String? thumbnailUrl,
      final String? releaseDate,
      final String? overview,
      final List<ServerModel>? serverList,
      final List<String>? categorys,
      @JsonKey(name: "wish_list") final bool? wishList}) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  int? get movieID;
  @override
  String? get movieTitle;
  @override
  String? get quality;
  @override
  double? get rate;
  @override
  String? get imageUrl;
  @override
  String? get thumbnailUrl;
  @override
  String? get releaseDate;
  @override
  String? get overview;
  @override
  List<ServerModel>? get serverList;
  @override
  List<String>? get categorys;
  @override
  @JsonKey(name: "wish_list")
  bool? get wishList;
  @override
  @JsonKey(ignore: true)
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
