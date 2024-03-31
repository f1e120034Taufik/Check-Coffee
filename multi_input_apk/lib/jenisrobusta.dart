import 'package:flutter/material.dart';

class JenisRobusta extends StatefulWidget {
  const JenisRobusta({super.key});
  @override
  State<JenisRobusta> createState() => _JenisRobustaState();
}

class _JenisRobustaState extends State<JenisRobusta> {
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
                  Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      child: const Text('Robusta',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color.fromARGB(255, 0, 75, 12)))),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: const Divider(
                        color: Colors.black,
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: const Column(children: [
                        Image(image: AssetImage('image/Robusta1..jpg')),
                        Text(''),
                        Text(
                            '     Kopi Robusta (nama Latin Coffea canephora atau Coffea robusta) merupakan keturunan beberapa spesies kopi, terutama Coffea canephora. Jenis kopi ini tumbuh baik di ketinggian 400-700 m dpl, temperatur 21-24° C dengan bulan kering 3-4 bulan secara berturut-turut dan 3-4 kali hujan kiriman. Kualitas buah lebih rendah dari Arabika dan Liberika.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 75, 12))),
                        Text(
                            '     Kopi robusta mewakili antara 40% dan 45% dari produksi kopi global, sebagian besar sisanya adalah Coffea arabica. Terdapat beberapa perbedaan komposisi biji kopi dari C. arabica dan C. robusta. Biji dari C. robusta cenderung memiliki tingkat keasaman yang lebih rendah, lebih pahit, dan rasa yang lebih berkayu dan sedikit rasa buah dibandingkan dengan biji C. arabica.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 75, 12))),
                        Text('')
                      ])),
                  ExpansionTile(
                    title: const Text('Uraian',
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
                                  '     Tanaman ini memiliki sistem akar yang dangkal dan tumbuh menjadi pohon atau perdu hingga mencapai 10 meter. Masa berbunganya tidak teratur dan membutuhkan sekitar 10-11 bulan bagi buahnya untuk masak, hingga menghasilkan biji kopi yang diinginkan. Kopi robusta menghasilkan lebih banyak panen daripada jenis arabika, dan mengandung lebih banyak kafein, yakni 2,7% dibandingkan dengan arabika yang mengandung 1,5% saja.[5] Selain itu, robusta juga lebih tahan terhadap serangan hama dan penyakit, sehingga membutuhkan lebih sedikit herbisida dan pestisida daripada perkebunan arabika.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                Text('')
                              ])
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
                                  '     Biji Robusta lebih kecil dan lebih bulat dibandingkan dengan biji Arabika dan  cenderung memiliki warna yang lebih gelap dan lebih merah tua daripada biji Arabika. Daun Robusta sering kali lebih besar dan lebih panjang dibandingkan dengan daun Arabika dan Warna daun Robusta cenderung lebih gelap dan lebih tebal.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                Text('')
                              ])
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
                    title: const Text('Persebaran',
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
                                  '     C. canephora berasal dari hutan dataran tinggi di Ethiopia, yang juga tumbuh di bagian Afrika Tengah dan Afrika Barat, terbentang dari Liberia hingga Tanzania dan bagian selatan Angola. Tetumbuhan ini tidak dikenali sebagai spesies kopi hingga tahun 1897, seabad lebih setelah penemuan spesies Coffea arabica. Robusta juga dilaporkan telah diperkenalkan di Kalimantan, Polinesia Prancis, Kosta Rika, Nikaragua, Jamaika dan Antillen Kecil.',
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
                      setState(() {
                        _customTileExpanded = expanded;
                      });
                    },
                  ),
                  ExpansionTile(
                    title: const Text('Status Konservasi',
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
                                Image(
                                    image: AssetImage(
                                        'image/statuskonservasirobusta.png')),
                                Text(''),
                                Text(
                                  'Risiko rendah',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                Text(''),
                                Text(
                                  '     Spesies dengan tingkat risiko rendah (IUCN: LC; Least Concern) merupakan status konservasi yang dikategorikan oleh Uni Internasional untuk Konservasi Alam (IUCN) kepada spesies yang telah dievaluasi, tetapi tidak masuk kategori mana pun dalam Daftar Merah IUCN.[1] Spesies-spesies tersebut tidak termasuk ke dalam spesies terancam, hampir terancam, atau (sebelum 2001) ketergantungan konservasi. Dengan kata lain, spesies-spesies ini tidak menjadi fokus konservasi spesies karena jumlahnya yang masih banyak di alam liar.',
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
