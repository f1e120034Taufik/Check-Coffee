import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:multi_input_apk/main.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});
  @override
  State<MyRegister> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyRegister> {
  final _formKey = GlobalKey<FormState>(
    debugLabel: 'Register',
  );
  final GlobalKey<FlutterPwValidatorState> validatorKey =
      GlobalKey<FlutterPwValidatorState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final nama = TextEditingController();

  bool texterror = false;
  bool isRegisterButtonEnabled = false;

  void _saveRegister() {
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
            'Register',
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
                  child: Column(children: [
                    Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 50),
                        child: const Image(
                            image: AssetImage('Logo.png'),
                            width: 100,
                            height: 100)),
                    Container(
                      width: 300,
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
                          const Text(
                            'Register',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Color.fromARGB(255, 0, 75, 12)),
                          ),
                          Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 10),
                              child: const Divider(
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 250,
                            child: TextFormField(
                              controller: nama,
                              decoration: const InputDecoration(
                                labelText: 'Nama',
                                border: OutlineInputBorder(),
                                hintText: 'Nama',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 0, 205, 82),
                                ),
                              ),
                            ),
                          ),
                          const Text(''),
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
                            onSuccess: () {
                              setState(() {
                                isRegisterButtonEnabled = true;
                              });
                            },
                            onFail: () {
                              setState(() {
                                isRegisterButtonEnabled =
                                    false; // Nonaktifkan tombol jika password tidak valid
                              });
                            },
                          ),
                          const Text(''),
                          ElevatedButton(
                            onPressed: isRegisterButtonEnabled
                                ? () async {
                                    if (_formKey.currentState!.validate()) {
                                      await FirebaseAuth.instance
                                          .createUserWithEmailAndPassword(
                                        email: email.text,
                                        password: password.text,
                                      );
                                      await FirebaseAuth.instance.currentUser!
                                          .updateDisplayName(nama.text);
                                      // ignore: use_build_context_synchronously
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const MyApp(),
                                        ),
                                      );
                                    } else {
                                      _saveRegister();
                                    }
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isRegisterButtonEnabled
                                  ? const Color.fromARGB(255, 0, 205, 82)
                                  : Colors.grey,
                            ),
                            child: const Text('Register'),
                          ),
                        ],
                      ),
                    )
                  ]))),
        ));
  }
}
