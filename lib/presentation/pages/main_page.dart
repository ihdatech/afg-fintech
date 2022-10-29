import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:fintech/presentation/manager/cubit/on_tap_bottom_navigation_bar/on_tap_bottom_navigation_bar_cubit.dart';
import 'package:fintech/presentation/widgets/home_widget.dart';
import 'package:fintech/presentation/widgets/wallets_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    // BlocProvider.of<GetProductsCubit>(context).fetch();
    BlocProvider.of<OnTapBottomNavigationBarCubit>(context).onTap(0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnTapBottomNavigationBarCubit, OnTapBottomNavigationBarState>(
      builder: (context, state) => Scaffold(
        body: <Widget>[
          const HomeWidget(),
          const WalletsWidget(),
          const HomeWidget(),
          const WalletsWidget(),
        ].elementAt(state.maybeWhen(
          success: (success) => success,
          orElse: () => 0,
        )),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) => BlocProvider.of<OnTapBottomNavigationBarCubit>(context).onTap(value),
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
          currentIndex: state.maybeWhen(
            success: (success) => success,
            orElse: () => 0,
          ),
          selectedItemColor: const Color(0xEA199EFF),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
