// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  String get createdAt => throw _privateConstructorUsedError;
  String get idUser => throw _privateConstructorUsedError;
  String get urlAvatar => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res>;
  $Res call(
      {String createdAt,
      String idUser,
      String urlAvatar,
      String message,
      String userName});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res> implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  final MessageModel _value;
  // ignore: unused_field
  final $Res Function(MessageModel) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? idUser = freezed,
    Object? urlAvatar = freezed,
    Object? message = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      idUser: idUser == freezed
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String,
      urlAvatar: urlAvatar == freezed
          ? _value.urlAvatar
          : urlAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MessageModelCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$_MessageModelCopyWith(
          _$_MessageModel value, $Res Function(_$_MessageModel) then) =
      __$$_MessageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String createdAt,
      String idUser,
      String urlAvatar,
      String message,
      String userName});
}

/// @nodoc
class __$$_MessageModelCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res>
    implements _$$_MessageModelCopyWith<$Res> {
  __$$_MessageModelCopyWithImpl(
      _$_MessageModel _value, $Res Function(_$_MessageModel) _then)
      : super(_value, (v) => _then(v as _$_MessageModel));

  @override
  _$_MessageModel get _value => super._value as _$_MessageModel;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? idUser = freezed,
    Object? urlAvatar = freezed,
    Object? message = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$_MessageModel(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      idUser: idUser == freezed
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String,
      urlAvatar: urlAvatar == freezed
          ? _value.urlAvatar
          : urlAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageModel implements _MessageModel {
  const _$_MessageModel(
      {required this.createdAt,
      required this.idUser,
      required this.urlAvatar,
      required this.message,
      required this.userName});

  factory _$_MessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageModelFromJson(json);

  @override
  final String createdAt;
  @override
  final String idUser;
  @override
  final String urlAvatar;
  @override
  final String message;
  @override
  final String userName;

  @override
  String toString() {
    return 'MessageModel(createdAt: $createdAt, idUser: $idUser, urlAvatar: $urlAvatar, message: $message, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageModel &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.idUser, idUser) &&
            const DeepCollectionEquality().equals(other.urlAvatar, urlAvatar) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(idUser),
      const DeepCollectionEquality().hash(urlAvatar),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_MessageModelCopyWith<_$_MessageModel> get copyWith =>
      __$$_MessageModelCopyWithImpl<_$_MessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageModelToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
      {required final String createdAt,
      required final String idUser,
      required final String urlAvatar,
      required final String message,
      required final String userName}) = _$_MessageModel;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$_MessageModel.fromJson;

  @override
  String get createdAt;
  @override
  String get idUser;
  @override
  String get urlAvatar;
  @override
  String get message;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$_MessageModelCopyWith<_$_MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
