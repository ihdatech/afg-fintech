import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:fintech/presentation/manager/cubit/get_login/get_login_cubit.dart';
import 'package:fintech/presentation/manager/cubit/login_queries/login_queries_cubit.dart';
import 'package:fintech/presentation/manager/cubit/obscure_text/obscure_text_cubit.dart';
import 'package:fintech/presentation/manager/getx/on_changed_checkbox_controller.dart';
import 'package:fintech/presentation/manager/getx/on_changed_email_controller.dart';
import 'package:fintech/presentation/manager/getx/on_changed_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<LoginQueriesCubit>(create: (_) => LoginQueriesCubit()),
        BlocProvider<ObscureTextCubit>(create: (_) => ObscureTextCubit()),
      ],
      child: Theme(
        data: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: GoogleFonts.manrope(
              fontWeight: FontWeight.w400,
              fontSize: 17.19,
              color: const Color(0xEAA6A6A6),
            ),
          ),
        ),
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  Assets.images.loginIllustration.path,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        color: const Color(0xEA0386D0),
                      ),
                      child: SvgPicture.asset(
                        Assets.svg.fingerprint,
                        height: 57.0,
                        width: 55.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                      child: Text(
                        'Login with touch ID',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.18,
                          color: const Color(0xEAFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 45.0, top: 32.0, right: 45.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 32.0, right: 16.0, bottom: 16.0),
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w400,
                          fontSize: 40.0,
                          color: const Color(0xEA000000),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'By signing in you are agreeing our',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                          color: const Color(0xEA6B5E5E),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Text(
                        'Term and privacy policy',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                          color: const Color(0xEA0386D0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 64.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.8,
                              color: const Color(0xEA036BB9),
                            ),
                          ),
                          const SizedBox(width: 14.0),
                          Text(
                            'Register',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.91,
                              color: const Color(0xEAA6A6A6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GetBuilder<OnChangedEmailController>(
                      init: OnChangedEmailController(),
                      builder: (controller) => Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: TextFormField(
                          onChanged: (value) => Get.find<OnChangedEmailController>()
                            ..enterController(true)
                            ..emailController(value),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            errorText: Get.find<OnChangedEmailController>().errorText,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 7.0),
                              child: SvgPicture.asset(Assets.svg.mail),
                            ),
                            prefixIconConstraints: const BoxConstraints(
                              maxHeight: 24.0,
                              maxWidth: 24.0 + 7.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GetBuilder<OnChangedPasswordController>(
                      init: OnChangedPasswordController(),
                      builder: (controller) => Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: TextFormField(
                          onChanged: (value) => Get.find<OnChangedPasswordController>()
                            ..enterController(true)
                            ..passwordController(value),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            errorText: Get.find<OnChangedPasswordController>().errorText,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 7.0),
                              child: SvgPicture.asset(Assets.svg.lock),
                            ),
                            prefixIconConstraints: const BoxConstraints(
                              maxHeight: 24.0,
                              maxWidth: 24.0 + 7.0,
                            ),
                            suffixIcon: IconButton(
                              splashRadius: 1,
                              padding: EdgeInsets.zero,
                              onPressed: () => Get.find<OnChangedPasswordController>()
                                ..enterController(true)
                                ..onPressed(),
                              icon: SvgPicture.asset(controller.obscureIconController.value),
                            ),
                            suffixIconConstraints: const BoxConstraints(
                              maxHeight: 24.0,
                              maxWidth: 33.0,
                            ),
                          ),
                          obscureText: controller.obscureTextController.value,
                          autocorrect: false,
                          enableSuggestions: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              GetBuilder<OnChangedCheckboxController>(
                                init: OnChangedCheckboxController(),
                                builder: (controller) => SizedBox(
                                  width: 22.0,
                                  height: 22.0,
                                  child: Checkbox(
                                    value: controller.checkboxController.value,
                                    onChanged: (value) => controller.checkboxController(value),
                                  ),
                                ),
                              ),
                              Text(
                                'Remember password',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.51,
                                  color: const Color(0xEA6B5E5E),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Forget password',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.75,
                              color: const Color(0xEA0386D0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GetBuilder<OnChangedEmailController>(
                      init: OnChangedEmailController(),
                      builder: (email) => GetBuilder<OnChangedPasswordController>(
                        init: OnChangedPasswordController(),
                        builder: (password) => Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: ElevatedButton(
                            onPressed: GetUtils.isEmail(email.emailController.value) && GetUtils.isLengthBetween(password.passwordController.value, 9, password.passwordController.value.length) ? () => BlocProvider.of<GetLoginCubit>(context).fetch(LoginQueries(email: email.emailController.value, password: password.passwordController.value)) : null,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0, bottom: 9.0),
                              child: Text(
                                'Login',
                                style: GoogleFonts.manrope(fontWeight: FontWeight.w400, fontSize: 19.15, color: const Color(0xFFFFFFFF)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Text(
                        'or connect with',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.18,
                          color: const Color(0xEA747070),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: SvgPicture.asset(Assets.socialMedia.facebook),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: SvgPicture.asset(Assets.socialMedia.instagram),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: SvgPicture.asset(Assets.socialMedia.pinterest),
                          ),
                          SvgPicture.asset(Assets.socialMedia.linkedin),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
