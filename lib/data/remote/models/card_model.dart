import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
abstract class CardModel with _$CardModel {
  factory CardModel({
    @JsonKey(name: 'exp', defaultValue: '') required String exp,
    @JsonKey(name: 'logo', defaultValue: '') required String logo,
    @JsonKey(name: 'type', defaultValue: '') required String type,
    @JsonKey(name: 'number', defaultValue: 0) required int number,
    @JsonKey(name: 'balance', defaultValue: 0) required int balance,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, dynamic> json) => _$CardModelFromJson(json);
}
