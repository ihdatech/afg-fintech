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
import 'package:fintech/presentation/manager/cubit/post_register/post_register_cubit.dart';
import 'package:fintech/presentation/manager/getx/on_changed_checkbox_controller.dart';
import 'package:fintech/presentation/manager/getx/on_changed_email_controller.dart';
import 'package:fintech/presentation/manager/getx/on_changed_password_controller.dart';
import 'package:fintech/presentation/manager/getx/on_tap_bottom_navigation_bar_controller.dart';
import 'package:get/get.dart';

class FintechConfig {
  FintechConfig._();

  void injection() {
    Get.lazyPut<Dio>(() => RemoteDio.instance);

    Get.lazyPut<RemoteDataSource>(() => RemoteDataSource(Get.find()));
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(Get.find()));
    Get.lazyPut<ProductRepository>(() => ProductRepositoryImpl(Get.find()));

    Get.lazyPut(() => IsAuthUsecases(Get.find()));
    Get.lazyPut(() => GetLoginUseCases(Get.find()));
    Get.lazyPut(() => PostRegisterUsecases(Get.find()));
    Get.lazyPut(() => GetProductsUsecases(Get.find()));

    Get.lazyPut(() => AuthCubit(Get.find()));
    Get.lazyPut(() => GetLoginCubit(Get.find()));
    Get.lazyPut(() => GetProductsCubit(Get.find()));
    Get.lazyPut(() => PostRegisterCubit(Get.find()));
    Get.lazyPut(() => OnChangedCheckboxController());
    Get.lazyPut(() => OnChangedEmailController());
    Get.lazyPut(() => OnChangedPasswordController());
    Get.lazyPut(() => OnTapBottomNavigationBarController());
  }

  static FintechConfig get instance => FintechConfig._();
}
