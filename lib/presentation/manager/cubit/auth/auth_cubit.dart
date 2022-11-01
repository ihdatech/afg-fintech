import 'package:dartz/dartz.dart';
import 'package:fintech/domain/use_cases/is_auth_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final IsAuthUsecases _usecases;

  AuthCubit(this._usecases) : super(const AuthState.initial());

  Future<void> fetch(RxBool rxBool) async {
    emit(const AuthState.loading());
    final Either<String, RxBool> results = await _usecases.execute(rxBool);
    emit(results.fold(
      (failure) => AuthState.failure(failure),
      (success) => AuthState.success(success),
    ));
  }
}
