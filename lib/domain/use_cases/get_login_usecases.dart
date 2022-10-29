import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/login_model.dart';
import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:fintech/domain/repositories/auth_repository.dart';

class GetLoginUseCases {
  final Future<Either<String, String>> Function(String value) onChangedEmail;
  final Future<Either<String, String>> Function(String value) onChangedPassword;
  final Future<Either<bool, bool>> Function() validate;
  final Future<Either<String, LoginModel>> Function() execute;

  GetLoginUseCases._({
    required this.onChangedEmail,
    required this.onChangedPassword,
    required this.validate,
    required this.execute,
  });

  factory GetLoginUseCases(AuthRepository repository) {
    String? emailController;
    String? passwordController;

    Future<Either<String, String>> onChangedEmail(String value) async {
      if (value.isNotEmpty) {
        emailController = value;
        return const Right('success');
      } else {
        return const Left('Email is not empty.');
      }
    }

    Future<Either<String, String>> onChangedPassword(String value) async {
      if (value.isNotEmpty) {
        passwordController = value;
        return const Right('success');
      } else {
        return const Left('Password is not empty.');
      }
    }

    Future<Either<bool, bool>> validate() async {
      if ((emailController ?? '').isNotEmpty && (passwordController ?? '').isNotEmpty) {
        return const Right(true);
      } else {
        return const Left(false);
      }
    }

    Future<Either<String, LoginModel>> execute() {
      return repository.getLogin(LoginQueries(
        email: emailController,
        password: passwordController,
      ));
    }

    return GetLoginUseCases._(
      onChangedEmail: (value) => onChangedEmail(value),
      onChangedPassword: (value) => onChangedPassword(value),
      validate: validate,
      execute: execute,
    );
  }
}
