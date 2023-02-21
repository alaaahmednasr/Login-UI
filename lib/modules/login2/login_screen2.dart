import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  LoginScreen2State createState() => LoginScreen2State();
}

class LoginScreen2State extends State<LoginScreen2> {
  
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // making image
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(
                      35,
                    ),
                    bottomEnd: Radius.circular(
                      35,
                    ),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  color: Color(0xFFf2f2f2),
                  child: const Image(
                    image: AssetImage(
                      'assets/images/Mobile login-rafiki.png',
                    ),
                  ),
                ),
              ),
              //making text
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 20,
                  start: 50,
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC53F3F),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //making email text field

              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: defaultTextFormField(
                  prefix: Icons.email,
                  text: 'emaill',
                  textController: emailController,
                  validateFunction: (String? value) {
                    if (value!.isEmpty) {
                      return ('can not be empty');
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //making password text field
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: defaultTextFormField(
                  prefix: Icons.lock,
                  obscure: obscure,//**** */
                  suffix: obscure ? Icons.visibility_off : Icons.visibility,
                  iconFunction: (){
                  setState(() {
                    obscure = !obscure;
                  });
                  },
                  text: 'pass',
                  textController: passwordController,
                  validateFunction: (String? value) {
                    if (value!.isEmpty) {
                      return ('can not be empty');
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //making sign in button
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        30.0,
                      ),
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: defaultButton(
                    buttonFunction: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController);
                      }
                    },
                    text: 'sign in',
                  ),
                ),
              ),
              //making text button
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don\'t have an account ?",
                    ),
                    TextButton(
                      onPressed: () {
                        print("Rejester");
                      },
                      child: const Text(
                        "Rejester Now !",
                        style: TextStyle(
                          color: Color(0xFFC53F3F),
                        ),
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
