part of 'is_auth_cubit.dart';

@freezed
class IsAuthState with _$IsAuthState {
  const factory IsAuthState.initial() = _Initial;
  const factory IsAuthState.loading() = _Loading;
  const factory IsAuthState.failure(String failure) = _Failure;
  const factory IsAuthState.success(RxBool success) = _Success;

}
