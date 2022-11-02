part of 'post_register_cubit.dart';

@freezed
class PostRegisterState with _$PostRegisterState {
  const factory PostRegisterState.initial() = _Initial;
  const factory PostRegisterState.loading() = _Loading;
  const factory PostRegisterState.failure(String failure) = _Failure;
  const factory PostRegisterState.success(String success) = _Success;
}
