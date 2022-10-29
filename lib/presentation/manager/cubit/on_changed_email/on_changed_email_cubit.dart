import 'package:dartz/dartz.dart';
import 'package:fintech/domain/use_cases/get_login_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_changed_email_state.dart';
part 'on_changed_email_cubit.freezed.dart';

class OnChangedEmailCubit extends Cubit<OnChangedEmailState> {
  final GetLoginUseCases _usecases;

  OnChangedEmailCubit(this._usecases) : super(const OnChangedEmailState.initial());

  Future<void> onChanged(String value) async {
    emit(const OnChangedEmailState.loading());
    final Either<String, String> results = await _usecases.onChangedEmail(value);
    emit(results.fold(
      (failure) => OnChangedEmailState.failure(failure),
      (success) => OnChangedEmailState.success(success),
    ));
  }
}
