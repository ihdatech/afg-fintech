part of 'get_login_cubit.dart';

@freezed
class GetLoginState with _$GetLoginState {
  const factory GetLoginState.initial() = _Initial;
  const factory GetLoginState.loading() = _Loading;
  const factory GetLoginState.failure(String failure) = _Failure;
  const factory GetLoginState.success(String success) = _Success;

}
