// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      name: json['name'] as String,
      idUser: json['idUser'] as String,
      lastMessageTime: json['lastMessageTime'] as String,
      urlAvatar: json['urlAvatar'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'idUser': instance.idUser,
      'lastMessageTime': instance.lastMessageTime,
      'urlAvatar': instance.urlAvatar,
    };
