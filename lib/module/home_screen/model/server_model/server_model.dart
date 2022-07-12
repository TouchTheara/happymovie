import 'package:freezed_annotation/freezed_annotation.dart';
part 'server_model.g.dart';
part 'server_model.freezed.dart';

@freezed
abstract class ServerModel with _$ServerModel {
  const factory ServerModel({
    String? serverUrl,
    String? enUrlSRT,
    String? khUrlSRT,
  }) = _ServerModel;

  factory ServerModel.fromJson(Map<String, dynamic> json) =>
      _$ServerModelFromJson(json);
}
