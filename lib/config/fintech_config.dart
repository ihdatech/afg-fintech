import 'package:dio/dio.dart';
import 'package:fintech/config/fintech_dio.dart';
import 'package:fintech/data/remote/data_sources/auth_remote_data_source.dart';
import 'package:fintech/data/remote/data_sources/product_remote_data_source.dart';
import 'package:fintech/data/remote/data_sources/wallet_remote_data_source.dart';
import 'package:fintech/data/repositories/auth_repository_impl.dart';
import 'package:fintech/data/repositories/product_repository_impl.dart';
import 'package:fintech/data/repositories/wallet_repository_impl.dart';
import 'package:fintech/domain/repositories/auth_repository.dart';
import 'package:fintech/domain/repositories/product_repository.dart';
import 'package:fintech/domain/repositories/wallet_repository.dart';
import 'package:fintech/domain/use_cases/get_cards_usecases.dart';
import 'package:fintech/domain/use_cases/get_login_usecases.dart';
import 'package:fintech/domain/use_cases/get_products_usecases.dart';
import 'package:fintech/domain/use_cases/get_spending_usecases.dart';
import 'package:fintech/domain/use_cases/is_auth_usecases.dart';
import 'package:fintech/domain/use_cases/post_register_usecases.dart';
import 'package:fintech/presentation/manager/cubit/auth/auth_cubit.dart';
import 'package:fintech/presentation/manager/cubit/get_login/get_login_cubit.dart';
import 'package:fintech/presentation/manager/cubit/get_products/get_products_cubit.dart';
import 'package:fintech/presentation/manager/cubit/post_register/post_register_cubit.dart';
import 'package:fintech/presentation/manager/getx/get_cards_controller.dart';
import 'package:fintech/presentation/manager/getx/get_spending_controller.dart';
import 'package:fintech/presentation/manager/getx/on_changed_checkbox_controller.dart';
import 'package:fintech/presentation/manager/getx/on_changed_email_controller.dart';
import 'package:fintech/presentation/manager/getx/on_changed_password_controller.dart';
import 'package:fintech/presentation/manager/getx/on_tap_bottom_navigation_bar_controller.dart';
import 'package:get/get.dart';

class FintechConfig {
  FintechConfig._();

  void injection() {
    Get.lazyPut<Dio>(() => FintechDio.instance);

    Get.lazyPut<AuthRemoteDataSource>(() => AuthRemoteDataSource(Get.find()));
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(Get.find()));
    Get.lazyPut<WalletRemoteDataSource>(() => WalletRemoteDataSource());
    Get.lazyPut<WalletRepository>(() => WalletRepositoryImpl(Get.find()));
    Get.lazyPut<ProductRemoteDataSource>(() => ProductRemoteDataSource(Get.find()));
    Get.lazyPut<ProductRepository>(() => ProductRepositoryImpl(Get.find()));

    Get.lazyPut<IsAuthUsecases>(() => IsAuthUsecases(Get.find()));
    Get.lazyPut<GetCardsUsecases>(() => GetCardsUsecases(Get.find()));
    Get.lazyPut<GetLoginUseCases>(() => GetLoginUseCases(Get.find()));
    Get.lazyPut<PostRegisterUsecases>(() => PostRegisterUsecases(Get.find()));
    Get.lazyPut<GetProductsUsecases>(() => GetProductsUsecases(Get.find()));
    Get.lazyPut<GetSpendingUsecases>(() => GetSpendingUsecases(Get.find()));

    Get.lazyPut<AuthCubit>(() => AuthCubit(Get.find()));
    Get.lazyPut<GetCardsController>(() => GetCardsController(Get.find()));
    Get.lazyPut<GetSpendingController>(() => GetSpendingController(Get.find()));
    Get.lazyPut<GetLoginCubit>(() => GetLoginCubit(Get.find()));
    Get.lazyPut<GetProductsCubit>(() => GetProductsCubit(Get.find()));
    Get.lazyPut<PostRegisterCubit>(() => PostRegisterCubit(Get.find()));
    Get.lazyPut<OnChangedCheckboxController>(() => OnChangedCheckboxController());
    Get.lazyPut<OnChangedEmailController>(() => OnChangedEmailController());
    Get.lazyPut<OnChangedPasswordController>(() => OnChangedPasswordController());
    Get.lazyPut<OnTapBottomNavigationBarController>(() => OnTapBottomNavigationBarController());
  }

  static FintechConfig get instance => FintechConfig._();
}
