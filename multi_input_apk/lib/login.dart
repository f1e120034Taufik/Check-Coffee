import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:multi_input_apk/main.dart';
import 'package:multi_input_apk/register.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});
  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>(
    debugLabel: 'Login',
  );
  final email = TextEditingController();
  final password = TextEditingController();
  final GlobalKey<FlutterPwValidatorState> validatorKey =
      GlobalKey<FlutterPwValidatorState>();

  bool texterror = false;

  void _saveLogin() {
    if (_formKey.currentState!.validate()) {
      return;
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
          255,
          0,
          205,
          82,
        ),
        title: const Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 50),
                    child: const Image(
                        image: AssetImage('Logo.png'),
                        width: 100,
                        height: 100)),
                Container(
                  width: 330,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(2, 4), // Shadow position
                        ),
                      ],
                      color: Colors.white),
                  child: Column(
                    children: [
                      const Text(''),
                      const Text('Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color.fromARGB(255, 0, 75, 12))),
                      Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: const Divider(
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 250,
                        child: TextFormField(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                              hintText: 'Contoh@gmail.com',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 0, 205, 82),
                              ),
                            ),
                            validator: (value) {
                              final bool isEmailValid =
                                  EmailValidator.validate(value.toString());
                              if (!isEmailValid) {
                                return 'contoh email: youremail@gmail.com';
                              }
                              return null;
                            }),
                      ),
                      const Text(''),
                      SizedBox(
                        width: 250,
                        child: TextFormField(
                          controller: password,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 0, 205, 82),
                            ),
                          ),
                        ),
                      ),
                      FlutterPwValidator(
                        key: validatorKey,
                        controller: password,
                        minLength: 8,
                        uppercaseCharCount: 1,
                        lowercaseCharCount: 3,
                        numericCharCount: 1,
                        specialCharCount: 1,
                        normalCharCount: 3,
                        width: 250,
                        height: 120,
                        onSuccess: () {},
                        onFail: () {},
                      ),
                      const Text(''),
                      ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              try {
                                await FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                  email: email.text,
                                  password: password.text,
                                );
                                User? user = FirebaseAuth.instance.currentUser;
                                if (user == null) {
                                  Fluttertoast.showToast(
                                    msg: 'Email / Password salah',
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.BOTTOM,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                  );
                                } else {
                                  Fluttertoast.showToast(
                                    msg: 'Login Berhasil',
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.BOTTOM,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                  );
                                  // ignore: use_build_context_synchronously
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const MyApp(),
                                    ),
                                  );
                                }
                              } catch (e) {
                                Fluttertoast.showToast(
                                  msg: 'Email / Password salah',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                );
                              }
                            } else {
                              _saveLogin();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 0, 205, 82),
                          ),
                          child: const Text('Login')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Belum punya akun? ',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 75, 12),
                            ),
                          ),
                          TextButton(
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 205, 82),
                              ),
                            ),
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MyRegister(),
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
      ),
    );
  }
}
