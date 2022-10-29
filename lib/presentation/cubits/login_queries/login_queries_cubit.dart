import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_queries_state.dart';

part 'login_queries_cubit.freezed.dart';

@injectable
class LoginQueriesCubit extends Cubit<LoginQueriesState> {
  LoginQueriesCubit() : super(const LoginQueriesState.initial());

  Future<void> onChangedEmail(String value) async {
    emit(LoginQueriesState.success(LoginQueries(
      email: value,
      password: state.maybeWhen(success: (success) => success.password, orElse: () => ''),
    )));
  }

  Future<void> onChangedPassword(String value) async {
    emit(LoginQueriesState.success(LoginQueries(
      email: state.maybeWhen(success: (success) => success.email, orElse: () => ''),
      password: value,
    )));
  }

  bool get validator {
    return state.maybeWhen(
      success: (success) => success.email.isNotEmpty && success.password.isNotEmpty,
      orElse: () => false,
    );
  }
}
