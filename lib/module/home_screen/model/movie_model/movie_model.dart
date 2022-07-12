// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../server_model/server_model.dart';
part 'movie_model.g.dart';
part 'movie_model.freezed.dart';

@freezed
abstract class MovieModel with _$MovieModel {
  const factory MovieModel({
    int? movieID,
    String? movieTitle,
    String? quality,
    double? rate,
    String? imageUrl,
    String? thumbnailUrl,
    String? releaseDate,
    String? overview,
    List<ServerModel>? serverList,
    List<String>? categorys,
    @JsonKey(name: "wish_list") bool? wishList,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
