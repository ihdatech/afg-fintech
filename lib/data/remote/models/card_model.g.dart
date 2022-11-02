// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardModel _$$_CardModelFromJson(Map<String, dynamic> json) => _$_CardModel(
      exp: json['exp'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      type: json['type'] as String? ?? '',
      number: json['number'] as int? ?? 0,
      balance: json['balance'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CardModelToJson(_$_CardModel instance) =>
    <String, dynamic>{
      'exp': instance.exp,
      'logo': instance.logo,
      'type': instance.type,
      'number': instance.number,
      'balance': instance.balance,
    };
