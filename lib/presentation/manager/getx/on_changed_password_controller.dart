import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:get/get.dart';

class OnChangedPasswordController extends GetxController {
  final Rx<String> passwordController = Rx<String>('');
  final Rx<bool> enterController = Rx<bool>(false);
  final Rx<bool> validateController = Rx<bool>(false);
  final Rx<bool> obscureTextController = Rx<bool>(true);
  final Rx<String> obscureIconController = Rx<String>(Assets.svg.hide);

  String? get errorText {
    if (enterController.value) {
      if (passwordController.isEmpty) {
        return 'Password is not empty.';
      } else if (passwordController.value.length <= 8) {
        return 'Password cannot be less than 8 characters.';
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  void onPressed() {
    if (obscureTextController.value) {
      obscureTextController(false);
      obscureIconController(Assets.svg.show);
    } else {
      obscureTextController(true);
      obscureIconController(Assets.svg.hide);
    }
  }
}
