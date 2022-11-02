import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:fintech/presentation/manager/getx/get_cards_controller.dart';
import 'package:fintech/presentation/manager/getx/get_spending_controller.dart';
import 'package:fintech/presentation/manager/getx/on_tap_bottom_navigation_bar_controller.dart';
import 'package:fintech/presentation/widgets/home_widget.dart';
import 'package:fintech/presentation/widgets/wallets_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    Get.find<GetCardsController>().fetch();
    Get.find<GetSpendingController>().fetch();
    // BlocProvider.of<GetProductsCubit>(context).fetch();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnTapBottomNavigationBarController>(
      init: OnTapBottomNavigationBarController(),
      builder: (controller) => Scaffold(
        body: <Widget>[
          HomeWidget(
            animationController: AnimationController(
              duration: const Duration(milliseconds: 600),
              vsync: this,
            ),
          ),
          const WalletsWidget(),
          const WalletsWidget(),
          const WalletsWidget(),
          const WalletsWidget(),
        ].elementAt(controller.indexController.value),
        bottomNavigationBar: BottomNavigationBar(
          onTap: Get.find<OnTapBottomNavigationBarController>().onTap,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svg.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svg.wallet),
              label: 'wallet',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svg.gift),
              label: 'Gift',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svg.profile),
              label: 'Profile',
            ),
          ],
          currentIndex: controller.indexController.value,
          selectedItemColor: const Color(0xEA199EFF),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
