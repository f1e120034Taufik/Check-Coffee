import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:multi_input_apk/Fitur/Akun%20User/Autentikasi/login.dart';
import 'package:multi_input_apk/Fitur/Akun%20User/Pengembang.dart';
import 'package:multi_input_apk/main.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});
  @override
  State<MyProfile> createState() => MyProfileState();
}

class MyProfileState extends State<MyProfile> {
  @override
  void initState() {
    super.initState();
  }

  final userName = FirebaseAuth.instance.currentUser?.displayName;
  final userEmail = FirebaseAuth.instance.currentUser?.email;

  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
          255,
          0,
          205,
          82,
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10,
                  ),
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(
                              Icons.person,
                              size: 70,
                            ),
                            title: Text(
                              '$userName',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Color.fromARGB(
                                  255,
                                  0,
                                  75,
                                  12,
                                ),
                              ),
                            ),
                            subtitle: Text(
                              'Email: $userEmail',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              if (user != null)
                                TextButton(
                                  child: const Text(
                                    'LogOut',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 205, 174, 0),
                                    ),
                                  ),
                                  onPressed: () async {
                                    await FirebaseAuth.instance.signOut();
                                    // ignore: use_build_context_synchronously
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => const MyApp()),
                                    );
                                  },
                                ),
                              if (user == null)
                                TextButton(
                                  child: const Text('Login',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color:
                                              Color.fromARGB(255, 0, 205, 82))),
                                  onPressed: () => Navigator.of(context)
                                      .push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const MyLogin(),
                                  )),
                                ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: const Divider(
                    color: Colors.black,
                  )),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextButton(
                          child: const Text('Tim Pengembang',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 0, 205, 82))),
                          onPressed: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Pengembang(),
                          )),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
