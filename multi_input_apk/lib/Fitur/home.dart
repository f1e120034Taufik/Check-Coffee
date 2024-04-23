import 'package:flutter/material.dart';
import 'package:multi_input_apk/Fitur/Deteksi/camera.dart';
import 'package:multi_input_apk/Fitur/Jenis%20Kopi/jeniskopi.dart';
import 'package:multi_input_apk/Fitur/Pengolahan%20Kopi/pengolahankopi.dart';
import 'package:multi_input_apk/Fitur/Produk%20Kopi/produkkopi.dart';
import 'package:multi_input_apk/Fitur/Quiz/quiz.dart';
import 'package:multi_input_apk/Fitur/Tips%20Berkebun/tipsberkebun.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  top: 35,
                ),
                child: Image.asset(
                  'logopanjang.png',
                  width: 340.0,
                  height: 180.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: const Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: const Text(
                  'Mulai Deteksi Sekarang',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(
                      255,
                      0,
                      75,
                      12,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 30.0,
                          vertical: 10,
                        ),
                        width: 78.0,
                        height: 78.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(
                            context,
                          ).push(
                            MaterialPageRoute(
                              builder: (
                                BuildContext context,
                              ) =>
                                  const Camera(),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 0.0,
                              vertical: 0.0,
                            ),
                            backgroundColor: const Color.fromARGB(
                              255,
                              0,
                              205,
                              82,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: const Icon(
                            Icons.image_search,
                            color: Colors.black,
                            size: 50.0,
                          ),
                        ),
                      ),
                      const Text(
                        'Deteksi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(
                            255,
                            0,
                            75,
                            12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 30.0,
                          vertical: 10,
                        ),
                        width: 78.0,
                        height: 78.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(
                            context,
                          ).push(
                            MaterialPageRoute(
                              builder: (
                                BuildContext context,
                              ) =>
                                  const MyQuiz(),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 0.0,
                              vertical: 0.0,
                            ),
                            backgroundColor: const Color.fromARGB(
                              255,
                              0,
                              205,
                              82,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: const Icon(
                            Icons.quiz,
                            color: Colors.black,
                            size: 50.0,
                          ),
                        ),
                      ),
                      const Text(
                        'Quiz',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(
                            255,
                            0,
                            75,
                            12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: const Divider(
                  color: Colors.black,
                ),
              ),
              Column(children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: const Text(
                    'Pelajari Lebih Lanjut',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(
                        255,
                        0,
                        75,
                        12,
                      ),
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 14.0,
                          vertical: 10,
                        ),
                        width: 58.0,
                        height: 58.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(
                            context,
                          ).push(
                            MaterialPageRoute(
                              builder: (
                                BuildContext context,
                              ) =>
                                  const JenisKopi(),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 0.0,
                              vertical: 0.0,
                            ),
                            backgroundColor: const Color.fromARGB(
                              255,
                              0,
                              205,
                              82,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: Image.asset(
                            'image/coffee-beans.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      const Text(
                        'Jenis',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(
                            255,
                            0,
                            75,
                            12,
                          ),
                        ),
                      ),
                      const Text(
                        'Kopi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(
                            255,
                            0,
                            75,
                            12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 14.0,
                            vertical: 10,
                          ),
                          width: 58.0,
                          height: 58.0,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(
                              255,
                              0,
                              205,
                              82,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () => Navigator.of(
                              context,
                            ).push(
                              MaterialPageRoute(
                                builder: (
                                  BuildContext context,
                                ) =>
                                    const ProdukKopi(),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 0.0,
                                vertical: 0.0,
                              ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                0,
                                205,
                                82,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            child: Image.asset(
                              'image/coffee-pack.png',
                              width: 40,
                              height: 40,
                            ),
                          )),
                      const Text(
                        'Produk',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(
                            255,
                            0,
                            75,
                            12,
                          ),
                        ),
                      ),
                      const Text(
                        'Kopi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(
                            255,
                            0,
                            75,
                            12,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 14.0,
                          vertical: 10,
                        ),
                        width: 58.0,
                        height: 58.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(
                            255,
                            0,
                            205,
                            82,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(
                            context,
                          ).push(
                            MaterialPageRoute(
                              builder: (
                                BuildContext context,
                              ) =>
                                  const PengolahanKopi(),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 0.0,
                              vertical: 0.0,
                            ),
                            backgroundColor: const Color.fromARGB(
                              255,
                              0,
                              205,
                              82,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: const Icon(
                            Icons.coffee_maker_rounded,
                            color: Colors.black,
                            size: 40.0,
                          ),
                        ),
                      ),
                      const Text(
                        'Pengolahan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(
                            255,
                            0,
                            75,
                            12,
                          ),
                        ),
                      ),
                      const Text(
                        'Kopi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(
                            255,
                            0,
                            75,
                            12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 14.0,
                            vertical: 10,
                          ),
                          width: 58.0,
                          height: 58.0,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(
                              255,
                              0,
                              205,
                              82,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () => Navigator.of(
                              context,
                            ).push(
                              MaterialPageRoute(
                                builder: (
                                  BuildContext context,
                                ) =>
                                    const MyTipsBerkebun(),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 0.0,
                                vertical: 0.0,
                              ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                0,
                                205,
                                82,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            child: Image.asset(
                              'image/gardening.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        const Text(
                          'Tips',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromARGB(
                              255,
                              0,
                              75,
                              12,
                            ),
                          ),
                        ),
                        const Text(
                          'Berkebun',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromARGB(
                              255,
                              0,
                              75,
                              12,
                            ),
                          ),
                        ),
                      ])
                ])
              ])
            ],
          ),
        ),
      ),
    );
  }
}
