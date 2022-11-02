part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.failure(String failure) = _Failure;
  const factory AuthState.success(RxBool success) = _Success;
}
