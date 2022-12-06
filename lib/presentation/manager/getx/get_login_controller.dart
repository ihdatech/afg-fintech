import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/login_model.dart';
import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:fintech/domain/use_cases/get_login_usecases.dart';
import 'package:get/get.dart';

class GetLoginController extends GetxController {
  final GetLoginUsecases _usecases;
  final Rx<String> emailController = Rx<String>('');
  final Rx<String> passwordController = Rx<String>('');
  final Rx<bool> loadingController = Rx<bool>(false);
  final Rx<String> failureController = Rx<String>('');
  final Rx<bool> successController = Rx<bool>(false);

  GetLoginController(this._usecases);

  Future<void> fetch() async {
    loadingController(true);
    final Either<String, LoginModel> results = await _usecases.execute(LoginQueries(
      email: emailController.value,
      password: passwordController.value,
    ));
    results.fold(
      (failure) => failureController(failure),
      (success) => successController(true),
    );
    loadingController(false);
  }
}
