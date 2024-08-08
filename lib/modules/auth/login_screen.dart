import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/user/user_controller.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:flutter_application_1/utils/app_utils.dart';
import 'package:flutter_application_1/utils/constant.dart';
import 'package:flutter_application_1/widgets/button/form_input_button.dart';
import 'package:flutter_application_1/widgets/textfields/form_input_textfields.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var registerController = TextEditingController();

  final UserController _userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          /// gambar
          Positioned(
            child: Image.asset(
              Assets.images.imageBg1.path,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),

          /// form
          Positioned(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: setWidth(60),
                  vertical: setHeight(60),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: setHeight(50),
                    ),
                    Text(
                      'Sign In',
                      style: styleTitle.copyWith(
                        fontSize: setFontSize(100),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: setHeight(50),
                    ),

                    ///username email
                    FormInputTextfield(
                      controller: usernameController,
                      inputType: TextInputType.text,
                      secureText: false,
                      hint: 'Email or Username',
                      prefixIcon: const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(
                      height: setHeight(50),
                    ),

                    ///Password
                    Obx(
                      () => FormInputTextfield(
                        controller: passwordController,
                        inputType: TextInputType.visiblePassword,
                        secureText: _userController.hidePassword.value,
                        hint: 'Password',
                        prefixIcon: const Icon(
                          Icons.password,
                          color: Colors.white,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _userController.hidePassword.value =
                                !_userController.hidePassword.value;
                          },
                          icon: Icon(
                            _userController.hidePassword.value == true
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                          ),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: setHeight(50),
                    ),

                    ///forgrt password

                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.routeForgetPassword);
                        },
                        child: Text(
                          'forget password',
                          style: styleTitle.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: setHeight(50),
                    ),

                    ///button sign in
                    FormInputButton(
                      text: 'Sign In',
                      onClick: () {
                        AppUtils().snackbarShow(
                          message:
                              'Email : ${usernameController.text}, Pass : ${passwordController.text}',
                        );
                      },
                    ),

                    SizedBox(
                      height: setHeight(50),
                    ),

                    ///button daftar
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.routeregister);
                      },
                      child: Center(
                          child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Belum Punya Akun?',
                              style: styleSubtitle.copyWith(
                                  fontSize: setFontSize(32),
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ' Daftar',
                              style: styleSubtitle.copyWith(
                                  fontSize: setFontSize(32),
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
