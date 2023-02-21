import 'package:flutter/material.dart';

class LoginScreen3 extends StatelessWidget {
  LoginScreen3({Key? key}) : super(key: key);

  var userNameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFfbf6f0),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Making Image Section
              Container(
                width: double.infinity,
                child: const Image(
                  image: AssetImage(
                    'assets/images/photo.jpg',
                  ),
                ),
              ),

              //Making Text Section
              Container(
                  padding: const EdgeInsets.all(
                    40,
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF01213d),
                    ),
                  )),

              //Making Text Field Section And Buttons
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Username Form Field
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 6,
                      ),
                      child: Text(
                        'Username',
                        style: TextStyle(
                          color: Color(0xFF01213d),
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      child: TextFormField(
                        controller: userNameController,
                        onChanged: (value) => print(value),
                        onFieldSubmitted: (value) => print(value),
                        cursorColor: Color(0xFF01213d),
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF01213d),
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF01213d),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    //Passsword Form Field
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 6,
                      ),
                      child: Text(
                        'password',
                        style: TextStyle(
                          color: Color(0xFF01213d),
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      child: TextFormField(
                        controller: passwordController,
                        onChanged: (value) => print(value),
                        onFieldSubmitted: (value) => print(value),
                        cursorColor: Color(0xFF01213d),
                        obscureText: true,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF01213d),
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF01213d),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    //Matrial Button
                    Container(
                      color: Color(0xFFffaa9b),
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          print(userNameController);
                          print(passwordController);
                        },
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),

                    //Text Button
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              color: Color(0xFF01213d),
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print(
                                'signup',
                              );
                            },
                            child: const Text(
                              'Signup',
                              style: TextStyle(
                                color: Color(0xFFffaa9b),
                                fontSize: 16,
                              ),
                            ),
                          ),
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
