part of 'on_changed_password_cubit.dart';

@freezed
class OnChangedPasswordState with _$OnChangedPasswordState {
  const factory OnChangedPasswordState.initial() = _Initial;
  const factory OnChangedPasswordState.loading() = _Loading;
  const factory OnChangedPasswordState.failure(String failure) = _Failure;
  const factory OnChangedPasswordState.success(String success) = _Success;

}
