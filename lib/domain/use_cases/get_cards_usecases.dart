import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/card_model.dart';
import 'package:fintech/domain/repositories/wallet_repository.dart';

class GetCardsUsecases {
  final Future<Either<String, List<CardModel>>> Function() execute;
  GetCardsUsecases._({required this.execute});
  factory GetCardsUsecases(WalletRepository repository) {
    Future<Either<String, List<CardModel>>> execute() => repository.getCards();
    return GetCardsUsecases._(execute: () => execute());
  }
}
