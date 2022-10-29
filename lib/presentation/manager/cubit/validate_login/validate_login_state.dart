part of 'validate_login_cubit.dart';

@freezed
class ValidateLoginState with _$ValidateLoginState {
  const factory ValidateLoginState.initial() = _Initial;
  const factory ValidateLoginState.loading() = _Loading;
  const factory ValidateLoginState.failure() = _Failure;
  const factory ValidateLoginState.success() = _Success;

}
