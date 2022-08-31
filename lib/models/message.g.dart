// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      createdAt: json['createdAt'] as String,
      idUser: json['idUser'] as String,
      urlAvatar: json['urlAvatar'] as String,
      message: json['message'] as String,
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'idUser': instance.idUser,
      'urlAvatar': instance.urlAvatar,
      'message': instance.message,
      'userName': instance.userName,
    };
