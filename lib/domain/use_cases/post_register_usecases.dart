import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/register_body.dart';
import 'package:fintech/data/remote/models/register_model.dart';
import 'package:fintech/domain/repositories/auth_repository.dart';

class PostRegisterUsecases {
  final Future<Either<String, RegisterModel>> Function(RegisterBody body) execute;
  PostRegisterUsecases._({required this.execute});
  factory PostRegisterUsecases(AuthRepository repository) {
    Future<Either<String, RegisterModel>> execute(RegisterBody body) => repository.postRegister(body);
    return PostRegisterUsecases._(execute: (body) => execute(body));
  }
}
