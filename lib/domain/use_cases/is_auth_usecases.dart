import 'package:dartz/dartz.dart';
import 'package:fintech/domain/repositories/auth_repository.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:injectable/injectable.dart';

@injectable
class IsAuthUsecases {
  final Future<Either<String, RxBool>> Function(RxBool rxBool) execute;
  IsAuthUsecases._({required this.execute});
  factory IsAuthUsecases(AuthRepository repository) {
    Future<Either<String, RxBool>> execute(RxBool rxBool) => repository.isLogged(rxBool);
    return IsAuthUsecases._(execute: (rxBool) => execute(rxBool));
  }
}