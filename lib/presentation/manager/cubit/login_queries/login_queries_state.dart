part of 'login_queries_cubit.dart';

@freezed
class LoginQueriesState with _$LoginQueriesState {
  const factory LoginQueriesState.initial() = _Initial;
  const factory LoginQueriesState.success(LoginQueries success) = _Success;
}
