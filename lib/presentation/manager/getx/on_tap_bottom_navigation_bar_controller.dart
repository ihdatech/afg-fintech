import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class OnTapBottomNavigationBarController extends GetxController {
  final Rx<int> indexController = Rx<int>(0);

  void onTap(int value) {
    indexController(value);
    update();
  }
}
