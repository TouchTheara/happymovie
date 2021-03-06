// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      movieID: json['movieID'] as int?,
      movieTitle: json['movieTitle'] as String?,
      quality: json['quality'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      releaseDate: json['releaseDate'] as String?,
      overview: json['overview'] as String?,
      serverList: (json['serverList'] as List<dynamic>?)
          ?.map((e) => ServerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categorys: (json['categorys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      wishList: json['wish_list'] as bool?,
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'movieID': instance.movieID,
      'movieTitle': instance.movieTitle,
      'quality': instance.quality,
      'rate': instance.rate,
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'releaseDate': instance.releaseDate,
      'overview': instance.overview,
      'serverList': instance.serverList,
      'categorys': instance.categorys,
      'wish_list': instance.wishList,
    };
