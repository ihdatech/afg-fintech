import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/login_model.dart';
import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:fintech/data/remote/models/register_body.dart';
import 'package:fintech/data/remote/models/register_model.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@singleton
abstract class AuthRepository {
  Future<Either<String, RxBool>> isLogged(RxBool rxBool);
  Future<Either<String, LoginModel>> getLogin(LoginQueries queries);
  Future<Either<String, RegisterModel>> postRegister(RegisterBody body);
}