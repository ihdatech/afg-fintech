// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/data_source/remote_data_source.dart' as _i4;
import 'data/repositories/auth_repository_impl.dart' as _i3;
import 'data/repositories/product_repository_impl.dart' as _i12;
import 'domain/repositories/auth_repository.dart' as _i6;
import 'domain/repositories/product_repository.dart' as _i8;
import 'domain/usecases/get_login_usecases.dart' as _i5;
import 'domain/usecases/get_products_usecases.dart' as _i7;
import 'domain/usecases/is_auth_usecases.dart' as _i9;
import 'domain/usecases/post_register_usecases.dart' as _i11;
import 'presentation/cubits/get_login/get_login_cubit.dart' as _i13;
import 'presentation/cubits/get_products/get_products_cubit.dart' as _i14;
import 'presentation/cubits/is_auth/is_auth_cubit.dart' as _i15;
import 'presentation/cubits/login_queries/login_queries_cubit.dart' as _i10;
import 'presentation/cubits/post_register/post_register_cubit.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AuthRepositoryImpl>(
      () => _i3.AuthRepositoryImpl(get<_i4.RemoteDataSource>()));
  gh.factory<_i5.GetLoginUsecases>(
      () => _i5.GetLoginUsecases(get<_i6.AuthRepository>()));
  gh.factory<_i7.GetProductsUsecases>(
      () => _i7.GetProductsUsecases(get<_i8.ProductRepository>()));
  gh.factory<_i9.IsAuthUsecases>(
      () => _i9.IsAuthUsecases(get<_i6.AuthRepository>()));
  gh.factory<_i10.LoginQueriesCubit>(() => _i10.LoginQueriesCubit());
  gh.factory<_i11.PostRegisterUsecases>(
      () => _i11.PostRegisterUsecases(get<_i6.AuthRepository>()));
  gh.factory<_i12.ProductRepositoryImpl>(
      () => _i12.ProductRepositoryImpl(get<_i4.RemoteDataSource>()));
  gh.factory<_i13.GetLoginCubit>(
      () => _i13.GetLoginCubit(get<_i5.GetLoginUsecases>()));
  gh.factory<_i14.GetProductsCubit>(
      () => _i14.GetProductsCubit(get<_i7.GetProductsUsecases>()));
  gh.factory<_i15.IsAuthCubit>(
      () => _i15.IsAuthCubit(get<_i9.IsAuthUsecases>()));
  gh.factory<_i16.PostRegisterCubit>(
      () => _i16.PostRegisterCubit(get<_i11.PostRegisterUsecases>()));
  return get;
}
