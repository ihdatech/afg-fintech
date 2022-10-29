import 'package:dartz/dartz.dart';
import 'package:fintech/domain/use_cases/get_login_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_changed_password_state.dart';
part 'on_changed_password_cubit.freezed.dart';

class OnChangedPasswordCubit extends Cubit<OnChangedPasswordState> {
  final GetLoginUseCases _usecases;

  OnChangedPasswordCubit(this._usecases) : super(const OnChangedPasswordState.initial());

  Future<void> onChanged(String value) async {
    emit(const OnChangedPasswordState.loading());
    final Either<String, String> results = await _usecases.onChangedPassword(value);
    emit(results.fold(
      (failure) => OnChangedPasswordState.failure(failure),
      (success) => OnChangedPasswordState.success(success),
    ));
  }
}
