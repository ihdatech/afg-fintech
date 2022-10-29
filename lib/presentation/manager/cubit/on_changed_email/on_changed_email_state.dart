part of 'on_changed_email_cubit.dart';

@freezed
class OnChangedEmailState with _$OnChangedEmailState {
  const factory OnChangedEmailState.initial() = _Initial;
  const factory OnChangedEmailState.loading() = _Loading;
  const factory OnChangedEmailState.failure(String failure) = _Failure;
  const factory OnChangedEmailState.success(String success) = _Success;

}
