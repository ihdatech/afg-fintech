import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/login_model.dart';
import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:fintech/domain/use_cases/get_login_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_login_cubit.freezed.dart';
part 'get_login_state.dart';

class GetLoginCubit extends Cubit<GetLoginState> {
  final GetLoginUsecases _usecases;

  GetLoginCubit(this._usecases) : super(const GetLoginState.initial());

  Future<void> fetch(LoginQueries queries) async {
    emit(const GetLoginState.loading());
    final Either<String, LoginModel> results = await _usecases.execute(queries);
    emit(results.fold(
      (failure) => GetLoginState.failure(failure),
      (success) => GetLoginState.success(success.message),
    ));
  }
}
