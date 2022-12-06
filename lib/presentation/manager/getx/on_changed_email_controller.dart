import 'package:get/get.dart';

class OnChangedEmailController extends GetxController {
  final Rx<String?> errorController = Rx<String?>(null);
  final Rx<String> emailController = Rx<String>('');
  final Rx<bool> enterController = Rx<bool>(false);

  String? get errorText {
    if (enterController.value) {
      if (emailController.value.isEmpty) {
        errorController('Email is not empty.');
        return 'Email is not empty.';
      } else if (!GetUtils.isEmail(emailController.value)) {
        errorController('Is not email.');
        return 'Is not email.';
      } else {
        errorController(null);
        return null;
      }
    } else {
      errorController(null);
      return null;
    }
  }
}
