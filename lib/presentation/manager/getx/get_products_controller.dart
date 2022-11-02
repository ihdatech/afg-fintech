import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/product_model.dart';
import 'package:fintech/domain/use_cases/get_products_usecases.dart';
import 'package:get/get.dart';

class GetProductsController extends GetxController {
  final GetProductsUsecases _usecases;
  final Rx<bool> loadingController = Rx<bool>(false);
  final Rx<String> failureController = Rx<String>('');
  final Rx<List<ProductModel>> successController = Rx<List<ProductModel>>([]);

  GetProductsController(this._usecases);

  Future<void> fetch() async {
    loadingController(true);
    final Either<String, List<ProductModel>> results = await _usecases.execute();
    results.fold(
      (failure) => failureController(failure),
      (success) => successController(success),
    );
    loadingController(false);
  }
}
