import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:fintech/presentation/manager/cubit/get_products/get_products_cubit.dart';
import 'package:fintech/presentation/manager/getx/on_tap_bottom_navigation_bar_controller.dart';
import 'package:fintech/presentation/widgets/home_widget.dart';
import 'package:fintech/presentation/widgets/wallets_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetProductsCubit>(context).fetch();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnTapBottomNavigationBarController>(
      init: OnTapBottomNavigationBarController(),
      builder: (controller) => Scaffold(
        body: <Widget>[
          const HomeWidget(),
          const WalletsWidget(),
          const HomeWidget(),
          const WalletsWidget(),
        ].elementAt(controller.indexController.value),
        bottomNavigationBar: BottomNavigationBar(
          onTap: Get.find<OnTapBottomNavigationBarController>().onTap,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Assets.svg.home.svg(),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Assets.svg.wallet.svg(),
              label: 'wallet',
            ),
            BottomNavigationBarItem(
              icon: Assets.svg.gift.svg(),
              label: 'Gift',
            ),
            BottomNavigationBarItem(
              icon: Assets.svg.profile.svg(),
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
