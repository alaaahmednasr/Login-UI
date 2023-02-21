import 'package:flutter/material.dart';

class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Making First Section (container + logo + screen name)
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: [
                    // 1- Container
                    Container(
                      width: double.infinity,
                      height: 300,
                      color: Colors.orange,
                    ),
                    // putting logo + screen name in container
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      width: double.infinity,
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // 2- logo
                          Container(
                            padding: const EdgeInsetsDirectional.only(
                              top: 40,
                            ),
                            width: double.infinity,
                            child: const Icon(
                              Icons.cabin_sharp,
                              color: Colors.white,
                              size: 60,
                            ),
                          ),
                          // 3- screen name
                          Container(
                            padding: const EdgeInsetsDirectional.only(
                              end: 30,
                              top: 40,
                            ),
                            width: double.infinity,
                            child: const Text(
                              'Login',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Making Second Section (form fields + material button + text button)
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    // 1- Email form field
                    Container(
                      height: 40,
                      child: TextFormField(
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                30.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // 2- password form field
                    Container(
                      height: 40,
                      child: TextFormField(
                        obscureText: true,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          labelText: "password",
                          prefixIcon: Icon(
                            Icons.key,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                30.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // 3- Forgotten password text button
                    Container(
                      alignment: Alignment.bottomRight,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          print("Forget Password");
                        },
                        child: const Text(
                          'Forget Password ?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 121, 116, 116),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    // 4- login material button
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Center(
                        child: Container(
                          height: 40,
                          color: Colors.orange,
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed: () {
                              print("login");
                            },
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // 5- rejester text button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account ?',
                        ),
                        TextButton(
                          onPressed: () {
                            print("Rejester");
                          },
                          child: const Text(
                            'Rejester',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ],
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
