import 'package:fintech/config/fintech_theme_data.dart';
import 'package:fintech/presentation/manager/cubit/auth/auth_cubit.dart';
import 'package:fintech/presentation/manager/cubit/get_login/get_login_cubit.dart';
import 'package:fintech/presentation/manager/cubit/get_products/get_products_cubit.dart';
import 'package:fintech/presentation/manager/cubit/post_register/post_register_cubit.dart';
import 'package:fintech/presentation/pages/login_page.dart';
import 'package:fintech/presentation/pages/main_page.dart';
import 'package:fintech/config/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class FintechApp extends StatelessWidget {
  const FintechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<GetLoginCubit>(create: (_) => Get.find<GetLoginCubit>()),
        BlocProvider<GetProductsCubit>(create: (_) => Get.find<GetProductsCubit>()),
        BlocProvider<AuthCubit>(create: (_) => Get.find<AuthCubit>()),
        BlocProvider<PostRegisterCubit>(create: (_) => Get.find<PostRegisterCubit>()),
      ],
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) => MaterialApp(
          title: 'Fintech',
          theme: FintechThemeData.lightThemeData,
          // darkTheme: FintechThemeData.darkThemeData,
          initialRoute: Routes.initial,
          routes: {Routes.initial: (context) => state.maybeWhen(success: (success) => const MainPage(), orElse: () => const MainPage())},
        ),
      ),
    );
  }
}
