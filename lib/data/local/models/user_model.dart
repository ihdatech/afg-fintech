part 'user_model.freezed.dart';
part 'user_model.g.dart';

@HiveType(typeId: 1)
abstract class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'message', defaultValue: '') required String message,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
