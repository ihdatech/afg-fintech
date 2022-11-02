import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_queries.freezed.dart';
part 'login_queries.g.dart';

@freezed
abstract class LoginQueries with _$LoginQueries {
  factory LoginQueries({
    String? email,
    String? password,
  }) = _LoginQueries;

  factory LoginQueries.fromJson(Map<String, dynamic> json) => _$LoginQueriesFromJson(json);
}
