import 'package:flutter/material.dart';

class JenisLiberika extends StatefulWidget {
  const JenisLiberika({super.key});
  @override
  State<JenisLiberika> createState() => _JenisLiberikaState();
}

class _JenisLiberikaState extends State<JenisLiberika> {
  get centerKey => null;
  bool _customTileExpanded = false;

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
          'Jenis Kopi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10.0,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(
                      2,
                      4,
                    ), // Shadow position
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    child: const Text(
                      'Liberika',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromARGB(255, 0, 75, 12)),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: const Divider(
                        color: Colors.black,
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: const Column(
                        children: [
                          Image(image: AssetImage('image/Liberika1.jpg')),
                          Text(''),
                          Text(
                            '     Kopi Liberika adalah jenis kopi yang berasal dari Liberia, Dan Afrika Barat. Kopi ini dapat tumbuh setinggi 9 meter dari tanah. Pada abad-19, jenis kopi ini didatangkan ke Indonesia untuk menggantikan kopi Arabika yang terserang oleh hama penyakit.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 75, 12)),
                          ),
                          Text('')
                        ],
                      )),
                  ExpansionTile(
                    title: const Text('Karakteristik',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 75, 12))),
                    trailing: Icon(
                      _customTileExpanded
                          ? Icons.arrow_drop_down_circle
                          : Icons.arrow_drop_down,
                    ),
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Column(
                            children: [
                              const Text(
                                  'Kopi ini memiliki beberapa karakteristik:',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 75, 12))),
                              const Text(''),
                              Table(
                                border: TableBorder.all(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255)),
                                columnWidths: const {
                                  0: FlexColumnWidth(0.3),
                                  1: FlexColumnWidth(4),
                                  2: FlexColumnWidth(2),
                                },
                                children: const [
                                  TableRow(children: [
                                    Text('1. ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                    Text(
                                        'Ukuran daun, cabang, bunga, buah dan pohon lebih besar dibandingkan kopi Arabika dan Robusta.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(255, 0, 75, 12)))
                                  ]),
                                  TableRow(children: [
                                    Text('2. ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                    Text(
                                        'Cabang primer dapat bertahan lebih lama dan dalam satu buku dapat keluar bunga atau buah lebih dari satu kali.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                  ]),
                                  TableRow(children: [
                                    Text('3. ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                    Text('Agak peka terhadap penyakit HV.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                  ]),
                                  TableRow(children: [
                                    Text('4. ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                    Text('Kualitas buah relatif rendah.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                  ]),
                                  TableRow(children: [
                                    Text('5. ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                    Text(
                                        'CProduksi sedang, (4,-5 ku/ha/th) dengan rendemen ± 12%.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                  ]),
                                  TableRow(children: [
                                    Text('6. ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                    Text('Berbuah sepanjang tahun.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                  ]),
                                  TableRow(children: [
                                    Text('7. ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                    Text(
                                        'Ukuran buah tidak merata/tidak seragam.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                  ]),
                                  TableRow(children: [
                                    Text('8. ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                    Text('Tumbuh baik di dataran rendah.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                  ]),
                                ],
                              ),
                              const Text(''),
                            ],
                          )),
                    ],
                    onExpansionChanged: (bool expanded) {
                      setState(() {
                        _customTileExpanded = expanded;
                      });
                    },
                  ),
                  ExpansionTile(
                    title: const Text('Ciri-ciri',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 75, 12))),
                    trailing: Icon(
                      _customTileExpanded
                          ? Icons.arrow_drop_down_circle
                          : Icons.arrow_drop_down,
                    ),
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: const Column(
                            children: [
                              Column(children: [
                                Text(
                                  '     Biji Liberika memiliki ukuran yang beragam, tetapi umumnya lebih besar daripada biji Arabika dan sering kali memiliki bentuk yang lebih unik dan Warna biji Liberika juga dapat bervariasi, tetapi sering kali lebih mirip dengan biji Arabika daripada biji Robusta. Daun Liberika dapat menyerupai Arabika atau Robusta tergantung pada varietasnya dan Beberapa daun Liberika memiliki ukuran yang lebih besar daripada Arabika, tetapi tidak sebesar Robusta.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                Text(''),
                              ])
                            ],
                          )),
                    ],
                    onExpansionChanged: (bool expanded) {
                      setState(
                        () {
                          _customTileExpanded = expanded;
                        },
                      );
                    },
                  ),
                  ExpansionTile(
                    title: const Text('Varietas',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 75, 12))),
                    trailing: Icon(
                      _customTileExpanded
                          ? Icons.arrow_drop_down_circle
                          : Icons.arrow_drop_down,
                    ),
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: const Column(
                            children: [
                              Column(children: [
                                Text(
                                  '     Beberapa varietas kopi Liberika yang pernah didatangkan ke Indonesia antara lain adalah Ardoniana dan Durvei.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                Text(''),
                              ])
                            ],
                          )),
                    ],
                    onExpansionChanged: (bool expanded) {
                      setState(
                        () {
                          _customTileExpanded = expanded;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
