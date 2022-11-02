import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_model.freezed.dart';
part 'balance_model.g.dart';

@freezed
abstract class BalanceModel with _$BalanceModel {
  factory BalanceModel({
    @JsonKey(name: 'type', defaultValue: '') required String type,
    @JsonKey(name: 'balance', defaultValue: 0) required int balance,
  }) = _BalanceModel;

  factory BalanceModel.fromJson(Map<String, dynamic> json) => _$BalanceModelFromJson(json);
}
