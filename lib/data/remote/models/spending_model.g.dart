// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spending_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpendingModel _$$_SpendingModelFromJson(Map<String, dynamic> json) =>
    _$_SpendingModel(
      income: BalanceModel.fromJson(json['income'] as Map<String, dynamic>),
      spending: (json['spending'] as List<dynamic>?)
              ?.map((e) => BalanceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_SpendingModelToJson(_$_SpendingModel instance) =>
    <String, dynamic>{
      'income': instance.income,
      'spending': instance.spending,
    };
