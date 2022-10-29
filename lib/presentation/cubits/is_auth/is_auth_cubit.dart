import 'package:dartz/dartz.dart';
import 'package:fintech/domain/use_cases/is_auth_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

part 'is_auth_state.dart';
part 'is_auth_cubit.freezed.dart';

@injectable
class IsAuthCubit extends Cubit<IsAuthState> {
  final IsAuthUsecases _usecases;

  IsAuthCubit(this._usecases) : super(const IsAuthState.initial());

  Future<void> fetch(RxBool rxBool) async {
    emit(const IsAuthState.loading());
    final Either<String, RxBool> results = await _usecases.execute(rxBool);
    emit(results.fold(
      (failure) => IsAuthState.failure(failure),
      (success) => IsAuthState.success(success),
    ));
  }
}
