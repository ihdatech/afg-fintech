import 'package:dartz/dartz.dart';
import 'package:fintech/domain/use_cases/get_login_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'validate_login_state.dart';
part 'validate_login_cubit.freezed.dart';

class ValidateLoginCubit extends Cubit<ValidateLoginState> {
  final GetLoginUseCases _usecases;

  ValidateLoginCubit(this._usecases) : super(const ValidateLoginState.initial());

  Future<void> validate() async {
    emit(const ValidateLoginState.loading());
    final Either<bool, bool> results = await _usecases.validate();
    emit(results.fold(
      (failure) => const ValidateLoginState.failure(),
      (success) => const ValidateLoginState.success(),
    ));
  }
}
