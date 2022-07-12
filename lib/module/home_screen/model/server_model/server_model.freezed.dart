// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'server_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerModel _$ServerModelFromJson(Map<String, dynamic> json) {
  return _ServerModel.fromJson(json);
}

/// @nodoc
mixin _$ServerModel {
  String? get serverUrl => throw _privateConstructorUsedError;
  String? get enUrlSRT => throw _privateConstructorUsedError;
  String? get khUrlSRT => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerModelCopyWith<ServerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerModelCopyWith<$Res> {
  factory $ServerModelCopyWith(
          ServerModel value, $Res Function(ServerModel) then) =
      _$ServerModelCopyWithImpl<$Res>;
  $Res call({String? serverUrl, String? enUrlSRT, String? khUrlSRT});
}

/// @nodoc
class _$ServerModelCopyWithImpl<$Res> implements $ServerModelCopyWith<$Res> {
  _$ServerModelCopyWithImpl(this._value, this._then);

  final ServerModel _value;
  // ignore: unused_field
  final $Res Function(ServerModel) _then;

  @override
  $Res call({
    Object? serverUrl = freezed,
    Object? enUrlSRT = freezed,
    Object? khUrlSRT = freezed,
  }) {
    return _then(_value.copyWith(
      serverUrl: serverUrl == freezed
          ? _value.serverUrl
          : serverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      enUrlSRT: enUrlSRT == freezed
          ? _value.enUrlSRT
          : enUrlSRT // ignore: cast_nullable_to_non_nullable
              as String?,
      khUrlSRT: khUrlSRT == freezed
          ? _value.khUrlSRT
          : khUrlSRT // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ServerModelCopyWith<$Res>
    implements $ServerModelCopyWith<$Res> {
  factory _$$_ServerModelCopyWith(
          _$_ServerModel value, $Res Function(_$_ServerModel) then) =
      __$$_ServerModelCopyWithImpl<$Res>;
  @override
  $Res call({String? serverUrl, String? enUrlSRT, String? khUrlSRT});
}

/// @nodoc
class __$$_ServerModelCopyWithImpl<$Res> extends _$ServerModelCopyWithImpl<$Res>
    implements _$$_ServerModelCopyWith<$Res> {
  __$$_ServerModelCopyWithImpl(
      _$_ServerModel _value, $Res Function(_$_ServerModel) _then)
      : super(_value, (v) => _then(v as _$_ServerModel));

  @override
  _$_ServerModel get _value => super._value as _$_ServerModel;

  @override
  $Res call({
    Object? serverUrl = freezed,
    Object? enUrlSRT = freezed,
    Object? khUrlSRT = freezed,
  }) {
    return _then(_$_ServerModel(
      serverUrl: serverUrl == freezed
          ? _value.serverUrl
          : serverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      enUrlSRT: enUrlSRT == freezed
          ? _value.enUrlSRT
          : enUrlSRT // ignore: cast_nullable_to_non_nullable
              as String?,
      khUrlSRT: khUrlSRT == freezed
          ? _value.khUrlSRT
          : khUrlSRT // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerModel implements _ServerModel {
  const _$_ServerModel({this.serverUrl, this.enUrlSRT, this.khUrlSRT});

  factory _$_ServerModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServerModelFromJson(json);

  @override
  final String? serverUrl;
  @override
  final String? enUrlSRT;
  @override
  final String? khUrlSRT;

  @override
  String toString() {
    return 'ServerModel(serverUrl: $serverUrl, enUrlSRT: $enUrlSRT, khUrlSRT: $khUrlSRT)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerModel &&
            const DeepCollectionEquality().equals(other.serverUrl, serverUrl) &&
            const DeepCollectionEquality().equals(other.enUrlSRT, enUrlSRT) &&
            const DeepCollectionEquality().equals(other.khUrlSRT, khUrlSRT));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(serverUrl),
      const DeepCollectionEquality().hash(enUrlSRT),
      const DeepCollectionEquality().hash(khUrlSRT));

  @JsonKey(ignore: true)
  @override
  _$$_ServerModelCopyWith<_$_ServerModel> get copyWith =>
      __$$_ServerModelCopyWithImpl<_$_ServerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerModelToJson(this);
  }
}

abstract class _ServerModel implements ServerModel {
  const factory _ServerModel(
      {final String? serverUrl,
      final String? enUrlSRT,
      final String? khUrlSRT}) = _$_ServerModel;

  factory _ServerModel.fromJson(Map<String, dynamic> json) =
      _$_ServerModel.fromJson;

  @override
  String? get serverUrl;
  @override
  String? get enUrlSRT;
  @override
  String? get khUrlSRT;
  @override
  @JsonKey(ignore: true)
  _$$_ServerModelCopyWith<_$_ServerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
