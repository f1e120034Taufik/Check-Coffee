import 'package:flutter/material.dart';
import 'package:multi_input_apk/jenisarabika.dart';
import 'package:multi_input_apk/jenisliberika.dart';
import 'package:multi_input_apk/jenisrobusta.dart';

class JenisKopi extends StatelessWidget {
  const JenisKopi({super.key});
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
          'Jenis Kopi',
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
                          const ListTile(
                            leading:
                                Image(image: AssetImage('image/Arabika1.jpg')),
                            title: Text('Arabika',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(255, 0, 75, 12))),
                            subtitle: Text(
                                'Kopi arabika (Coffea arabica), juga dikenal sebagai kopi Arab, kopi semak Arab, atau kopi gunung, adalah .....'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text(
                                  'Detail',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 205, 82)),
                                ),
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const JenisArabika(),
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
                  margin: const EdgeInsets.symmetric(horizontal: 10.00),
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading:
                                Image(image: AssetImage('image/Robusta1..jpg')),
                            title: Text('Robusta',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(255, 0, 75, 12))),
                            subtitle: Text(
                                'Kopi Robusta (nama Latin Coffea canephora atau Coffea robusta) merupakan keturunan beberapa .....'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('Detail',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 0, 205, 82))),
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const JenisRobusta(),
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
                      horizontal: 10.0, vertical: 10),
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading:
                                Image(image: AssetImage('image/Liberika1.jpg')),
                            title: Text('Liberika',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(255, 0, 75, 12))),
                            subtitle: Text(
                                'Kopi Liberika adalah jenis kopi yang berasal dari Liberia, Dan Afrika Barat. Kopi ini dapat tumbuh setinggi  .....'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('Detail',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 0, 205, 82))),
                                onPressed: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const JenisLiberika())),
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
