import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/spending_model.dart';
import 'package:fintech/domain/repositories/wallet_repository.dart';

class GetSpendingUsecases {
  final Future<Either<String, SpendingModel>> Function() execute;
  GetSpendingUsecases._({required this.execute});
  factory GetSpendingUsecases(WalletRepository repository) {
    Future<Either<String, SpendingModel>> execute() => repository.getSpending();
    return GetSpendingUsecases._(execute: () => execute());
  }
}
