import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:multi_input_apk/history.dart';
import 'package:multi_input_apk/home.dart';
import 'package:multi_input_apk/profile.dart';
//import 'package:firebase_app_check/firebase_app_check.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Firebase.initializeApp();
  //FirebaseAppCheck.instance.activate();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(
      title: 'Check-Coffee',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 201, 255, 232),
        primarySwatch: Colors.green,
      ),
      home: const MyNavBar(title: 'Navbar'),
    );
  }
}

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key, required this.title});
  final String title;
  @override
  State<MyNavBar> createState() => NavBarState();
}

class NavBarState extends State<MyNavBar> {
  int _selectedIndex = 0;

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          children: const <Widget>[
            MyHomePage(title: 'Home'),
            MyHistory(),
            MyProfile(),
          ],
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 205, 82),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(color: Colors.green, spreadRadius: 0, blurRadius: 1),
              ],
            ),
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
                  backgroundColor: const Color.fromARGB(255, 0, 205, 82),
                  selectedItemColor: const Color.fromARGB(255, 201, 255, 232),
                  unselectedItemColor: Colors.black,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.history_sharp), label: 'History'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person_rounded), label: 'Profile')
                  ],
                  currentIndex: _selectedIndex,
                  onTap: _onTappedBar,
                ))));
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
