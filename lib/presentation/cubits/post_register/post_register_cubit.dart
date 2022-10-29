import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/register_body.dart';
import 'package:fintech/data/remote/models/register_model.dart';
import 'package:fintech/domain/use_cases/post_register_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'post_register_state.dart';
part 'post_register_cubit.freezed.dart';

@injectable
class PostRegisterCubit extends Cubit<PostRegisterState> {
  final PostRegisterUsecases _usecases;

  PostRegisterCubit(this._usecases) : super(const PostRegisterState.initial());

  Future<void> fetch(RegisterBody body) async {
    emit(const PostRegisterState.loading());
    final Either<String, RegisterModel> results = await _usecases.execute(body);
    emit(results.fold(
      (failure) => PostRegisterState.failure(failure),
      (success) => PostRegisterState.success(success.message),
    ));
  }
}
