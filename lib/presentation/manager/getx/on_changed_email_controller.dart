import 'package:get/get.dart';

class OnChangedEmailController extends GetxController {
  final Rx<String> emailController = Rx<String>('');
  final Rx<bool> enterController = Rx<bool>(false);

  String? get errorText {
    if (enterController.value) {
      if (emailController.isEmpty) {
        return 'Email is not empty.';
      } else if (!(GetUtils.isEmail(emailController.value))) {
        return 'Is not email.';
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}
