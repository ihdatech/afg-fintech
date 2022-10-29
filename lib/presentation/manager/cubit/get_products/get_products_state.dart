part of 'get_products_cubit.dart';

@freezed
class GetProductsState with _$GetProductsState {
  const factory GetProductsState.initial() = _Initial;
  const factory GetProductsState.loading() = _Loading;
  const factory GetProductsState.failure(String failure) = _Failure;
  const factory GetProductsState.success(List<ProductModel> success) = _Success;

}
