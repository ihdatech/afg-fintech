import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/login_model.dart';
import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:fintech/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLoginUsecases {
  final Future<Either<String, LoginModel>> Function(LoginQueries queries) execute;
  GetLoginUsecases._({required this.execute});
  factory GetLoginUsecases(AuthRepository repository) {
    Future<Either<String, LoginModel>> execute(LoginQueries queries) => repository.getLogin(queries);
    return GetLoginUsecases._(execute: (queries) => execute(queries));
  }
}