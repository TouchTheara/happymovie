import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:get/get.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/controller/textfield_controller.dart';
import '../sign_up/controller/signup_controller.dart';
import '../sign_up/sign_up_page.dart';
import 'controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TextFieldController());
    final signUpController = Get.put(SignUpController());
    final loginController = Get.put(LoginController());

    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xFF252525),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Center(
                      child: Image.asset(
                    'asset/logo.png',
                    width: 300,
                    height: 300,
                  )),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 0, left: 20, right: 0, bottom: 15),
                  child: Text(
                    "Login:",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                  child: buildTextField(
                      checkInputFT: false,
                      hintText: 'example@mail.com',
                      label: 'Enter your email',
                      txtInput: TextInputType.emailAddress,
                      controller: controller.emailTextController,
                      isEmpty:
                          controller.isEmailText.value.isEmpty ? true : false,
                      focusNode: controller.signInFocus,
                      isFocus: controller.isSignInFocus.value),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: buildPasswordTextField(
                    hintText: 'Password',
                    label: 'Password',
                    txtInput: TextInputType.text,
                    controller: controller.passTextController,
                    isEmpty: controller.isPassText.value.isEmpty ? true : false,
                    focusNode: controller.passFocus,
                    isFocus: controller.isPassFocus.value,
                    onChanged: ((value) {
                      controller.isPassText.value = value;
                    }),
                    isHidePass: signUpController.isHidePass.value,
                    onTap: () {
                      signUpController.isHidePass.value =
                          !signUpController.isHidePass.value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: ButtonWidget.roundedButton(
                      title: 'Log In',
                      height: 40,
                      backgroundColor:
                          controller.isEmailText.value.isNotEmpty &&
                                  controller.isPassText.value.isNotEmpty
                              ? const Color(0xFFFFD700)
                              : const Color(0xFFC2C2C2),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      onTap: () {
                        if (controller.isEmailText.value.isNotEmpty &&
                            controller.isPassText.value.isNotEmpty) {
                          loginController.loginUserApi(context,
                              username: controller.isEmailText.value,
                              password: controller.isPassText.value);
                        }
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: const Text(
                        "Create an account",
                        style:
                            TextStyle(color: Color(0xFFFFD700), fontSize: 15),
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

buildPasswordTextField(
    {TextInputType? txtInput,
    bool? checkInputFT = false,
    String? formatter = '',
    TextEditingController? controller,
    String? hintText,
    String? label,
    VoidCallback? onTap,
    FocusNode? focusNode,
    bool? isFocus = false,
    bool? isEmpty = true,
    void Function(String)? onChanged,
    bool? isHidePass = true}) {
  var con = Get.put(TextFieldController());

  return Container(
    //width: 335,
    height: 44,
    //margin: EdgeInsets.only(left: 5),
    decoration: BoxDecoration(
      color: con.isPassText.value.isEmpty && focusNode!.hasFocus != true
          ? const Color(0xFFFFFFFF)
          : const Color(0xFF252525),
      //     ? const Color(0xFF252525)
      //     : isFocus! && controller.text.isEmpty
      //         ? const Color(0xFF252525)
      //         : const Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      style: TextStyle(
          color: isFocus! || con.isPassText.value.isEmpty != true
              ? Colors.white
              : Colors.black),
      // textInputAction: TextInputAction.emergencyCall,
      obscureText: isHidePass!,
      obscuringCharacter: '???',
      //focusNode: con.getFocusNode.value,
      keyboardType: txtInput,
      inputFormatters: checkInputFT!
          ? [
              // MaskedInputFormatter('(###) ###-####')formatter
              MaskedInputFormatter('$formatter'),
            ]
          : null,
      //focusNode: myFocusNode,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      //initialValue: 'Input text',
      // onTap: () {
      //   con.isFocus = true;
      //   debugPrint("clicked! ${con.isFocus}");
      //   con.update();
      // },
      focusNode: focusNode,
      onChanged: onChanged,

      //   con.update();
      // }),
      //onChanged: onChange,
      controller: controller,
      //focusNode: con.focus,
      onFieldSubmitted: (v) {},
      decoration: InputDecoration(
        suffix: GestureDetector(
          onTap: onTap,
          child: isHidePass
              ? const Icon(
                  Icons.visibility_off_outlined,
                  color: Color(0xFFFFD700),
                )
              : const Icon(
                  Icons.visibility_outlined,
                  color: Color(0xFFFFD700),
                ),
        ),

        labelText: '$label',
        labelStyle: TextStyle(
            color: isFocus || con.isPassText.value.isEmpty != true
                ? Colors.white
                : Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 13),
        hintText: '$hintText',
        hintStyle: const TextStyle(color: Colors.white, fontSize: 13),

        prefix: checkInputFT
            ? Text(
                '(+855) ',
                style: TextStyle(
                    color: isFocus || con.isPassText.value.isEmpty != true
                        ? Colors.white
                        : Colors.black),
              )
            : null,
        contentPadding: const EdgeInsets.only(
          left: 18,
          right: 18,
        ),

        //errorText: 'Error message',
        // border: con.isEmpty(controller)
        //     ? OutlineInputBorder(borderRadius: BorderRadius.circular(10))
        //     : InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Color(0xFFFFD700)),
          borderRadius: BorderRadius.circular(15),
        ),
        border: con.isPassText.value.isNotEmpty
            ? OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              )
            : InputBorder.none,

        enabledBorder: con.isPassText.value.isNotEmpty
            ? OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 3, color: Color(0xFFFFD700)),
                borderRadius: BorderRadius.circular(15),
              )
            : InputBorder.none,
        // disabledBorder: isEmpty == true || isFocus != true
        //     ? OutlineInputBorder(
        //         borderSide: const BorderSide(width: 3, color: Colors.white),
        //         borderRadius: BorderRadius.circular(15),
        //       )
        //     : InputBorder.none,

        //con.isfocus! ? OutlineInputBorder() :
        // suffixIcon: Icon(
        //   Icons.error,
        // ),
      ),
    ),
  );
}
