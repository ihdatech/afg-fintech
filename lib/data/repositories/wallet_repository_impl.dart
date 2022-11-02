import r'package:dartz/dartz.dart';
import r'package:fintech/data/remote/data_sources/wallet_remote_data_source.dart';
import r'package:fintech/data/remote/models/card_model.dart';
import 'package:fintech/data/remote/models/spending_model.dart';
import r'package:fintech/domain/repositories/wallet_repository.dart';

class WalletRepositoryImpl implements WalletRepository {
  final WalletRemoteDataSource _remoteDataSource;

  WalletRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, List<CardModel>>> getCards() async {
    try {
      List<CardModel> result = await _remoteDataSource.getCards();
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, SpendingModel>> getSpending() async {
    try {
      SpendingModel result = await _remoteDataSource.getSpending();
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
