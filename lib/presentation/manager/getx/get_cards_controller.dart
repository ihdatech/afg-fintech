import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/card_model.dart';
import 'package:fintech/domain/use_cases/get_cards_usecases.dart';
import 'package:get/get.dart';

class GetCardsController extends GetxController {
  final GetCardsUsecases _usecases;
  final Rx<bool> loadingController = Rx<bool>(false);
  final Rx<String> failureController = Rx<String>('');
  final Rx<List<CardModel>> successController = Rx<List<CardModel>>([]);

  GetCardsController(this._usecases);

  Future<void> fetch() async {
    loadingController(true);
    final Either<String, List<CardModel>> results = await _usecases.execute();
    results.fold(
      (failure) => failureController(failure),
      (success) => successController(success),
    );
    loadingController(false);
  }
}
