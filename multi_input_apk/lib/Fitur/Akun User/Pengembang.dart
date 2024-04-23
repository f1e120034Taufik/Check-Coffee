// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Pengembang extends StatelessWidget {
  const Pengembang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 205, 82),
        title: const Text('Tim Pengembang',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.person,
                              size: 70,
                            ),
                            title: Text(
                                'Pradita Eko Prasetyo Utomo, S.Pd., M.Cs.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(255, 0, 75, 12))),
                            subtitle: Text('Dosen Pembimbing'),
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
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.person,
                              size: 70,
                            ),
                            title: Text(
                                'Benedika Ferdian Hutabarat, S.Komp., M.Kom.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(255, 0, 75, 12))),
                            subtitle: Text('Dosen Pembimbing'),
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
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.person,
                              size: 70,
                            ),
                            title: Text('M. Taufik Hidayat',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(255, 0, 75, 12))),
                            subtitle: Text('Programmer - Mahasiswa'),
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
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.person,
                              size: 70,
                            ),
                            title: Text('Amanda Setiawan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(255, 0, 75, 12))),
                            subtitle: Text('Modeling CNN - Mahasiswa'),
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
