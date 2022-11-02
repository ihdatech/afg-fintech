import 'package:fintech/data/remote/models/balance_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spending_model.freezed.dart';
part 'spending_model.g.dart';

@freezed
abstract class SpendingModel with _$SpendingModel {
  factory SpendingModel({
    @JsonKey(name: 'income') required BalanceModel income,
    @JsonKey(name: 'spending', defaultValue: []) required List<BalanceModel> spending,
  }) = _SpendingModel;

  factory SpendingModel.fromJson(Map<String, dynamic> json) => _$SpendingModelFromJson(json);
}