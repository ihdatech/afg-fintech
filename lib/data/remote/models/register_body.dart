import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_body.freezed.dart';
part 'register_body.g.dart';

@freezed
abstract class RegisterBody with _$RegisterBody {
  factory RegisterBody({
    String? name,
    String? email,
    String? password,
  }) = _RegisterBody;

  factory RegisterBody.fromJson(Map<String, dynamic> json) => _$RegisterBodyFromJson(json);
}
