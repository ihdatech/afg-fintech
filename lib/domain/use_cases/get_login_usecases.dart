import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/login_model.dart';
import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:fintech/domain/repositories/auth_repository.dart';

class GetLoginUseCases {
  final Future<Either<String, LoginModel>> Function(LoginQueries queries) execute;

  GetLoginUseCases._({required this.execute});

  factory GetLoginUseCases(AuthRepository repository) {
    Future<Either<String, LoginModel>> execute(LoginQueries queries) => repository.getLogin(queries);
    return GetLoginUseCases._(execute: (queries) => execute(queries));
  }
}