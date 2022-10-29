import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';

part 'register_model.g.dart';

@freezed
abstract class RegisterModel with _$RegisterModel {
  factory RegisterModel({
    RegisterData? data,
    @JsonKey(name: 'message', defaultValue: '') required String message,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => _$RegisterModelFromJson(json);
}

@freezed
abstract class RegisterData with _$RegisterData {
  factory RegisterData({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'email', defaultValue: '') required String email,
    @JsonKey(name: 'updated_at', defaultValue: '') required String updatedAt,
    @JsonKey(name: 'created_at', defaultValue: '') required String createdAt,
  }) = _RegisterData;

  factory RegisterData.fromJson(Map<String, dynamic> json) => _$RegisterDataFromJson(json);
}
