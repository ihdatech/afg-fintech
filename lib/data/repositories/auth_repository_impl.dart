import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fintech/data/remote/data_sources/auth_remote_data_source.dart';
import 'package:fintech/data/remote/models/login_model.dart';
import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:fintech/data/remote/models/register_body.dart';
import 'package:fintech/data/remote/models/register_model.dart';
import 'package:fintech/domain/repositories/auth_repository.dart';
import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, RxBool>> isLogged(RxBool rxBool) async {
    return Right(rxBool);
  }

  @override
  Future<Either<String, LoginModel>> getLogin(LoginQueries queries) async {
    try {
      // LoginModel result = await _remoteDataSource.getLogin(queries);
      LoginModel result = LoginModel.fromJson(json.decode(await rootBundle.loadString(Assets.json.spending)));
      if (result.message == 'success') return Right(result);
      return Left(result.message);
    } on DioError catch (e) {
      return Left(e.message);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, RegisterModel>> postRegister(RegisterBody body) async {
    try {
      RegisterModel result = await _remoteDataSource.postRegister(body);
      return Right(result);
    } on DioError catch (e) {
      return Left(e.message);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
