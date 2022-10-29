import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/product_model.dart';
import 'package:fintech/domain/use_cases/get_products_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'get_products_state.dart';

part 'get_products_cubit.freezed.dart';

@injectable
class GetProductsCubit extends Cubit<GetProductsState> {
  final GetProductsUsecases _usecases;

  GetProductsCubit(this._usecases) : super(const GetProductsState.initial());

  Future<void> fetch() async {
    emit(const GetProductsState.loading());
    final Either<String, List<ProductModel>> results = await _usecases.execute();
    emit(results.fold(
      (failure) => GetProductsState.failure(failure),
      (success) => GetProductsState.success(success),
    ));
  }
}
