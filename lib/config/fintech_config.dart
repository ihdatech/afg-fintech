import 'package:dio/dio.dart';
import 'package:fintech/data/remote/data_sources/remote_data_source.dart';
import 'package:fintech/data/remote/data_sources/remote_dio.dart';
import 'package:fintech/data/repositories/auth_repository_impl.dart';
import 'package:fintech/data/repositories/product_repository_impl.dart';
import 'package:fintech/domain/repositories/auth_repository.dart';
import 'package:fintech/domain/repositories/product_repository.dart';
import 'package:fintech/domain/use_cases/get_login_usecases.dart';
import 'package:fintech/domain/use_cases/get_products_usecases.dart';
import 'package:fintech/domain/use_cases/is_auth_usecases.dart';
import 'package:fintech/domain/use_cases/post_register_usecases.dart';
import 'package:fintech/presentation/manager/cubit/auth/auth_cubit.dart';
import 'package:fintech/presentation/manager/cubit/get_login/get_login_cubit.dart';
import 'package:fintech/presentation/manager/cubit/get_products/get_products_cubit.dart';
import 'package:fintech/presentation/manager/cubit/on_changed_email/on_changed_email_cubit.dart';
import 'package:fintech/presentation/manager/cubit/on_changed_password/on_changed_password_cubit.dart';
import 'package:fintech/presentation/manager/cubit/post_register/post_register_cubit.dart';
import 'package:fintech/presentation/manager/cubit/validate_login/validate_login_cubit.dart';
import 'package:get_it/get_it.dart';

class FintechConfig {
  FintechConfig._();

  void injection() {
    GetIt.instance.registerLazySingleton<Dio>(() => RemoteDio.instance);

    GetIt.instance.registerLazySingleton<RemoteDataSource>(() => RemoteDataSource(GetIt.instance<Dio>()));
    GetIt.instance.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(GetIt.instance()));
    GetIt.instance.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(GetIt.instance()));

    GetIt.instance.registerFactory<IsAuthUsecases>(() => IsAuthUsecases(GetIt.instance()));
    GetIt.instance.registerFactory<GetLoginUseCases>(() => GetLoginUseCases(GetIt.instance()));
    GetIt.instance.registerFactory<GetProductsUsecases>(() => GetProductsUsecases(GetIt.instance()));
    GetIt.instance.registerFactory<PostRegisterUsecases>(() => PostRegisterUsecases(GetIt.instance()));

    GetIt.instance.registerFactory<AuthCubit>(() => AuthCubit(GetIt.instance()));
    GetIt.instance.registerFactory<GetLoginCubit>(() => GetLoginCubit(GetIt.instance()));
    GetIt.instance.registerFactory<GetProductsCubit>(() => GetProductsCubit(GetIt.instance()));
    GetIt.instance.registerFactory<PostRegisterCubit>(() => PostRegisterCubit(GetIt.instance()));
    GetIt.instance.registerFactory<OnChangedEmailCubit>(() => OnChangedEmailCubit(GetIt.instance()));
    GetIt.instance.registerFactory<OnChangedPasswordCubit>(() => OnChangedPasswordCubit(GetIt.instance()));
    GetIt.instance.registerFactory<ValidateLoginCubit>(() => ValidateLoginCubit(GetIt.instance()));
  }

  static FintechConfig get instance => FintechConfig._();
}
