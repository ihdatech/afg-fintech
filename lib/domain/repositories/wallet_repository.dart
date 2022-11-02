import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/card_model.dart';
import 'package:fintech/data/remote/models/spending_model.dart';

abstract class WalletRepository {
  Future<Either<String, List<CardModel>>> getCards();
  Future<Either<String, SpendingModel>> getSpending();
}
