import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/spending_model.dart';
import 'package:fintech/domain/use_cases/get_spending_usecases.dart';
import 'package:get/get.dart';

class GetSpendingController extends GetxController {
  final GetSpendingUsecases _usecases;
  final Rx<bool> loadingController = Rx<bool>(false);
  final Rx<String> failureController = Rx<String>('');
  final Rx<SpendingModel?> successController = Rx<SpendingModel?>(null);

  GetSpendingController(this._usecases);

  Future<void> fetch() async {
    loadingController(true);
    final Either<String, SpendingModel> results = await _usecases.execute();
    results.fold(
      (failure) => failureController(failure),
      (success) => successController(success),
    );
    loadingController(false);
  }
}
