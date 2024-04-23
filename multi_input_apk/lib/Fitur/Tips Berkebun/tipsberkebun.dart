import 'package:flutter/material.dart';
import 'package:multi_input_apk/Fitur/Jenis%20Kopi/Jenis-Jenis%20Kopi/jenisarabika.dart';
import 'package:multi_input_apk/Fitur/Jenis%20Kopi/Jenis-Jenis%20Kopi/jenisliberika.dart';
import 'package:multi_input_apk/Fitur/Jenis%20Kopi/Jenis-Jenis%20Kopi/jenisrobusta.dart';

class MyTipsBerkebun extends StatefulWidget {
  const MyTipsBerkebun({super.key});
  @override
  State<MyTipsBerkebun> createState() => _MyTipsBerkebunState();
}

class _MyTipsBerkebunState extends State<MyTipsBerkebun> {
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
          'Tips Berkebun',
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
                horizontal: 10.0,
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
                      ),
                    ),
                  ],
                  color: Colors.white),
              child: Column(
                children: [
                  const Divider(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    child: const Text(
                      'Berikut ini adalah Tahapan Dalam Berkebun Kopi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromARGB(255, 0, 75, 12)),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 25),
                    child: const Column(
                      children: [
                        Image(image: AssetImage('image/bibitkopi.jpg')),
                        Text(''),
                        Text(
                          '      Kopi adalah salah satu andalan Indonesia dalam urusan ekonomi, baik dari level daerah sampai nasional. Menurut data dari dari Badan Pusat Statistik, budidaya kopi di Indonesia menghasilkan 774,60 ribu ton kopi pada tahun 2021. Artinya, ini bisa menjadi peluang menggiurkan.',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 75, 12)),
                        ),
                        Text(''),
                        Text(
                          '     Kita bisa menemukan petani kopi hampir seluruh provinsi di Indonesia. Tak hanya itu, keberadaan kedai kopi juga mulai menjamur di banyak daerah. Mayoritas kedai kopi ini memanfaatkan produk petani lokal.',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 75, 12)),
                        ),
                        Text(''),
                        Text(
                          '     Di samping itu, potensi ekspor kopi juga tak kalah besar. Nah, Kita bisa memanfaatkan peluang-peluang ini dengan menjadi pembudidaya kopi. Namun sebelum mulai, kamu harus tahu bagaimana menanam kopi dengan baik dan benar agar hasilnya bisa berkualitas.',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 75, 12)),
                        ),
                      ],
                    ),
                  ),
                  ExpansionTile(
                    title: const Text('1. Memilih Jenis Biji Kopi',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/jeniskopi.jpg')),
                                const Text(''),
                                const Text(
                                  '     Supaya kamu bisa mendapatkan hasil yang berkualitas, maka pemilihan biji harus diperhatikan dengan baik. Bahkan sejak dari penentuan varietas dan jenisnya.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                const Text(
                                  '     Perlu kamu tahu, kopi termasuk tanaman tahunan. Yang artinya butuh puluhan tahun untuk bisa diproduksi, tepatnya 20 tahun. Dengan karakteristik seperti ini, pemilihan bibit tidak boleh sembarangan. Karena sekali memilih, tidak bisa diganti lagi.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                const Text(
                                  '     Ada banyak sekali jenis kopi yang bisa kamu tanam, namun yang paling terkenal hanya empat jenis, yaitu:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                ExpansionTile(
                                  title: const Text('1. Arabika',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 75, 12))),
                                  trailing: Icon(
                                    _customTileExpanded
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_down,
                                  ),
                                  children: <Widget>[
                                    Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 25.0),
                                        child: const Column(
                                          children: [
                                            Column(children: [
                                              Text(
                                                '     Ini adalah jenis yang paling diminati karena rasanya paling nikmat dibanding jenis lainnya. Buah kopi arabika akan berwarna merah terang saat matang. Rendemen atau persentase produk akhir dan hasil panennya sekitar 18% sampai 20%.',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        255, 0, 75, 12)),
                                              ),
                                            ])
                                          ],
                                        )),
                                    TextButton(
                                      child: const Text('Selengkapnya',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  255, 0, 205, 82))),
                                      onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const JenisArabika(),
                                      )),
                                    ),
                                  ],
                                  onExpansionChanged: (bool expanded) {
                                    setState(() {
                                      _customTileExpanded = expanded;
                                    });
                                  },
                                ),
                                ExpansionTile(
                                  title: const Text('2. Robusta',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 75, 12))),
                                  trailing: Icon(
                                    _customTileExpanded
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_down,
                                  ),
                                  children: <Widget>[
                                    Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 25.0),
                                        child: const Column(
                                          children: [
                                            Column(children: [
                                              Text(
                                                '     Termasuk jenis kopi yang populer di Indonesia. Dibanding arabika, jenis ini bisa panen lebih cepat. Bentuk buah nya membulat dan akan berwarna merah cenderung gelap saat matang. Rendemennya juga lebih tinggi, yaitu sekitar 22% namun dengan harga yang lebih murah dari arabika.',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        255, 0, 75, 12)),
                                              ),
                                            ])
                                          ],
                                        )),
                                    TextButton(
                                      child: const Text('Selengkapnya',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  255, 0, 205, 82))),
                                      onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const JenisRobusta(),
                                      )),
                                    ),
                                  ],
                                  onExpansionChanged: (bool expanded) {
                                    setState(() {
                                      _customTileExpanded = expanded;
                                    });
                                  },
                                ),
                                ExpansionTile(
                                  title: const Text('3. Liberika',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 75, 12))),
                                  trailing: Icon(
                                    _customTileExpanded
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_down,
                                  ),
                                  children: <Widget>[
                                    Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 25.0),
                                        child: const Column(
                                          children: [
                                            Column(children: [
                                              Text(
                                                '     Dibanding dua jenis lainnya, liberika masih kalah pamornya. Akan tetapi, kopi ini bisa tumbuh dengan baik di dataran rendah. Ukuran buahnya cenderung tidak rata dan memiliki rendemen sekitar 12% (sangat rendah).',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        255, 0, 75, 12)),
                                              ),
                                            ])
                                          ],
                                        )),
                                    TextButton(
                                      child: const Text('Selengkapnya',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  255, 0, 205, 82))),
                                      onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const JenisLiberika(),
                                      )),
                                    ),
                                  ],
                                  onExpansionChanged: (bool expanded) {
                                    setState(() {
                                      _customTileExpanded = expanded;
                                    });
                                  },
                                ),
                              ]),
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
                    title: const Text('2. Seleksi Calon Benih',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/sortir.jpg')),
                                const Text(''),
                                const Text(
                                  '     Mari anggap kamu membeli bibit kopi dari balai pertanian yang telah melalui proses seleksi, namun ini bukan berarti kamu harus menanam semua benihnya. Lakukan penyortiran ulang di rumah untuk memilah mana biji yang benar-benar baik dan mana yang tidak.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                const Text(
                                  '     Biji calon benih kopi yang baik harus memenuhi kriteria berikut ini:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
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
                                      Text(''),
                                      Text(''),
                                    ]),
                                    TableRow(children: [
                                      Text('-',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Berasal dari tanaman induk yang sudah terbukti menghasilkan buah yang berkualitas. Artinya, sebisa mungkin cari rekomendasi dari petani kopi yang berpengalaman.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('-',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Pastikan tanaman induk nya sehat dan tahan pada serangan hama juga penyakit',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('- ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Kalau bisa, tanaman induknya harus yang berasal dari hasil persilangan pertama alias F1',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('-',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Pastikan calon benih merupakan buah yang sudah masak agar cadangan nutrisinya banyak sehingga cukup sampai proses perkecambahan nanti.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('-',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Pilih yang mulus, tidak cacat, dan berukuran normal.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' '),
                                      Text(''),
                                    ]),
                                  ],
                                ),
                                const Text(
                                  '     Setelah menyeleksi buah kopi yang berkualitas, maka kamu bisa melanjutkan ke tahap pembenihan. Berikut langkah-langkahnya:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
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
                                      Text(''),
                                      Text(''),
                                    ]),
                                    TableRow(children: [
                                      Text('1.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Masukkan buah yang sudah diseleksi ke dalam karung goni',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('2',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Kemudian rendang karung goni ke dalam air sampai basah seluruhnya',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('3 ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Setelah itu, angkat karung dan injak-injak. Proses ini akan membuat kulit buah terkelupas secara mudah',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('4',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Cuci biji kopi sambil digosok dengan abu supaya lendirnya hilang',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('5',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Rendam biji kopi di dalam air sekali lagi. Jika ada biji yang mengapung, sebaiknya buang saja karena dalam biji tersebut sudah tidak ada kandungan sel benih',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('6',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Pilah biji yang berukuran hampir seragam dan buang yang ukuranya terlalu besar maupun terlalu kecil.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('7',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Pastikan biji kopi yang sudah dipilah bentuknya sempurna serta tidak cacat',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('8',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Anginkan biji selama 1 sampai 2 hari untuk mengeringkannya. Hindari menjemur biji di bawah sinar matahari langsung',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('9',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Bila sudah kering, rendam biji ke dalam larutan anti jamur (larutan fungisida) selama 5 menit. Jangan lupa, pastikan dosis dan aturan pakainya sudah sesuai dengan yang ada di dalam kemasannya.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('10',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Simpan biji di tempat yang gelap, sejuk, dan kering jika tak ingin langsung digunakan. Sayangnya, kalau tak langsung digunakan, kualitas benih bisa menurun. Bahkan kalau lebih dari 6 bulan, persentase biji yang berhasil tumbuh hanya 60%-70%. Sedangkan kalau langsung disemaikan, peluang tumbuhnya bisa sampai 90%-100%.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' '),
                                      Text(''),
                                    ]),
                                  ],
                                ),
                              ]),
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
                    title: const Text('3. Proses Penyemaian Biji',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/semai.jpg')),
                                const Text(''),
                                const Text(
                                  '     Untuk menyemai biji kopi yang sudah diseleksi, kamu bisa mengikuti panduan ini:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
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
                                      Text(''),
                                      Text(''),
                                    ]),
                                    TableRow(children: [
                                      Text('1.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Pertama pilih dulu lokasi persemaian yang berada di bawah pohon',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('2',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Setelah tempatnya cocok, buat bedengan selebar 1 meter atau bisa juga disesuaikan dengan kondisi lahannya.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('3 ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Lapisi dengan menggunakan pasir halus dengan tebal 5 cm – 10 cm',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('4',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Taburkan furadan untuk mencegah munculnya jamur, kalau tidak bisa dengan menggunakan larutan fungisida secukupnya.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('5',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Tanamkan biji kopi hasil seleksi dengan posisi berbaris ke bedengan. Kedalamannya cukup 0,5 cm – 1 cm.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('6',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Buat larikan secara rapi dengan jarak tanam 3 cm x 5 cm',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('7',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Pastikan bagian punggung biji menghadap ke atas saat dibenamkan.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('8',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Jika kamu ingin mempercepat proses perkecambahan, kamu bisa melepas bagian kulit tanduk. Cara ini sudah banyak digunakan oleh petani-petani kopi di Indonesia.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('9',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Letakkan alang-alang atau potongan jerami hingga menutupi bedengan supaya kelembabannya terjaga',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('10',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Siram bedengan pada pagi dan sore hari secara teratur sambil terus dipantau perkembangannya.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text('',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                  ],
                                ),
                                const Text(
                                  '     Biasanya biji kopi akan mulai berkecambah saat menginjak umur 4-8 minggu jika ditanam di dataran tinggi yang hawanya sejuk. Sedangkan di dataran rendah, biji dapat berkecambah lebih cepat, yaitu sekitar 3-4 minggu.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                const Text(
                                  '     Setelah berkecambah, bagian kepalanya akan terlihat seperti biji bulat dan seolah-olah berhenti tumbuh, ini disebut juga dengan fase serdadu. Setelah satu bulan, bagian kepala akan merekah dan muncul lembar-lembar daun kecil.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                const Text(
                                  '     Jika sudah ada dua lembar daun, itu berarti benih sudah memasuki fase kepelan atau berumur 2-3 bulan. Nah jika sudah berada dalam fase ini, kamu bisa memindahkan benih ke media polybag.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                              ]),
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
                    title: const Text('4. Menyiapkan Lahan Untuk Menanam',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/lahan.jpg')),
                                const Text(''),
                                const Text(
                                  '     Sebenarnya, lahan untuk menanam harus disiapkan jauh sebelum kamu siap menanam benih. Apalagi jika di lahan tersebut belum ada tanaman peneduh, sebab kamu harus menyiapkannya 2-4 tahun sebelum memulai budidaya kopi.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                const Text(
                                  '     Mengapa begitu? Sebab tanaman peneduh ini memiliki fungsi yang sangat penting, yaitu mengatur intensitas sinar matahari yang masuk, karena kopi tidak memerlukan sinar matahari yang penuh dan intens.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                const Text(
                                  '     Untuk jenis pohon peneduhnya, kamu bisa menggunakan pohon sengon, dadap, atau lamtoro. Daun-daun yang jatuh dari pohon ini dapat menjadi pupuk kandang bagi benih tanaman kopi.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                const Text(
                                  '     Selain pohon peneduh, kamu juga harus memeriksa tingkat keasaman (pH) tanah. Pastikan pH-nya sudah sesuai dengan jenis kopi yang akan kamu tanam. Untuk kopi arabika, pH yang baik berkisar antara 5 – 6,5 dan 4,5 – 6,5 untuk kopi robusta.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                const Text(
                                  '     Kalau Grameds masih punya lahan kosong, bisa sekalian ditanami pisang yang mudah tumbuh. Lumayan kan, kamu bisa punya penghasilan juga dari budidaya pisang. Untuk panduannya bisa dilihat di buku Sukses Budi Daya Pisang di Pekarangan & Perkebunan karangan Bambang Cahyono.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                              ]),
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
                    title: const Text('5. Memindahkan Kopi Ke Polybag',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/polybag.jpg')),
                                const Text(''),
                                const Text(
                                  '     Setelah lahannya siap dan biji sudah berada dalam fase kepelan, kamu bisa mulai memindahkannya ke polybag, caranya:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
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
                                      Text('',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text('',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('1.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Siapkan sebuah tempat dengan atap paranet satu lapis untuk tempat pembibitannya. Paranet ini nantinya akan mencegah sinar matahari dan juga air hujan secara langsung.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('2',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Kemudian, siapkan polybag yang sudah diisi media tanam sebelumnya. Media tanam ini terdiri dari 1 bagian pasir, 2 bagian kompos, dan 2 bagian tanah',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('3 ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Letakkan polybag di tempat pembibitan yang sudah kamu siapkan',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('4',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Pindahkan benih kopinya ke dalam polybag dengan cara mencungkil tanahnya. Jangan mencabut akar benih untuk memindahkannya sebab dapat merusak akar yang baru tumbuh.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('5',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Pilih benih yang akarnya lurus, sebab kalau tidak lurus biasanya benih akan tumbuh menjadi pohon yang kerdil.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('6',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Letakkan polybag dengan posisi berbaris dan beri jarak sekitar 1 meter agar perawatannya jadi lebih mudah.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('7',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Siram bibit yang sudah dimasukan ke dalam polybag sebanyak 1 – 2 kali sehari.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('8',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Berikan juga pupuk di bulan ke-3 agar bibit tumbuh subur. Pupuk yang digunakan bisa terbuat dari campuran urea, kotoran sapi, dan air dengan rasio 1:10:10. Untuk dosisnya cukup 1 batok kelapa per tanaman untuk setiap minggu.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('9',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Setelah 8-9 bulan, bibit kopi sudah siap ditanam di perkebunan',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' '),
                                      Text(''),
                                    ]),
                                  ],
                                ),
                              ]),
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
                    title: const Text('6. Memindahkan Ke Lahan',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/tanam.jpg')),
                                const Text(
                                  '     Biji kopi beras selanjutnya disortasi secara fisik berdasarkan ukuran dan cacat bijinya. Proses ini dilakukan dengan ayakan mekanis tipe silinder berputar atau tipe getar.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                )
                              ]),
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
                    title: const Text('7. Penyiraman',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/siram.jpg')),
                                const Text(''),
                                const Text(
                                  '     Setelah bibit berada di perkebunan, Grameds harus mulai melakukan perawatan secara rutin. Saat umur penanamannya masih sekitar 1 sampai 6 bulan, lakukan perawatan paling tidak sebulan sekali. Setelah itu, tingkatkan intensitasnya menjadi dua kali per minggu.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(
                                  '     Bagian penting dalam perawatan yang wajib kamu perhatikan adalah penyiraman. Aktivitas ini tidak perlu dilakukan setiap hari, tapi pastikan kamu menyelesaikannya secara berkala.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(
                                  '     Khusus saat musim kemarau, lakukan penyiraman setiap dua minggu sekali dan air tidak boleh menggenang terlalu lama di sekitar batang tanaman. Jika dibiarkan, akan membuat akar menjadi busuk.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                )
                              ]),
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
                    title: const Text('8. Penyiangan',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/penyiangan.jpg')),
                                const Text(''),
                                const Text(
                                  '    Penyiangan atau pencabutan gulma perlu Grameds lakukan secara teratur. Tujuannya agar tanaman kopi bisa mendapatkan makanan yang cukup dari hara dan humus yang ada di dalam tanah.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(
                                  '    Maka dari itu, semua tanaman liar yang ada di sekitar pohon kopi harus dihilangkan dengan sempurna. Jika tidak, mereka akan merebut nutrisi yang dari humus sehingga tanaman kopi tidak bisa tumbuh dengan baik. Lakukan penyiangan setiap dua minggu sekali sampai tanaman kopi tumbuh besar.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                )
                              ]),
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
                    title: const Text('9. Penyulaman',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/sulam.jpg')),
                                const Text(''),
                                const Text(
                                  '    Dalam perawatan tanaman kopi, Kita juga harus melakukan proses penyulaman atau mengganti tanaman yang rusak/mati dengan yang baru. Hal ini penting supaya jumlah tanaman kopi di area tanam tetap terkontrol.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(
                                  '    Gunakan benih kopi yang sama dengan yang sudah kamu tanam. Selama kamu melakukan perawatan secara intensif, benih yang baru bisa tumbuh lebih cepat, kok.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                )
                              ]),
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
                    title: const Text('10. Pamupukan',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/pupuk.jpg')),
                                const Text(''),
                                const Text(
                                  '    Ada dua opsi yang bisa kamu pilih dalam tahap ini. Pertama menggunakan pupuk buatan dan yang kedua menggunakan pupuk organik. Masing-masing punya kelebihan dan kekurangannya sendiri, namun sebaiknya utamakan pupuk organik dulu.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(
                                  '    Soalnya pupuk organik tidak mengandung bahan kimia seperti insektisida dan peptisida yang bisa membahayakan tanaman kopi. Di samping itu, kamu bisa membuat pupuk organik sendiri dengan menggunakan bahan-bahan alami yang ada di sekitar kebun kopi.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(
                                  '    Contohnya, manfaatkan kulit buah kopi sisa pengupasan serta daun-daun dari pohon pelindung untuk diolah menjadi kompos. Pemberian pupuk ini bisa kamu kerjakan 1 – 2 tahun sekali dengan dosis 20 kilogram per tanaman.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(
                                  '    Buatlah lubang melingkar di sekitar tanaman, kemudian masukkan kompos atau pupuk buatan ke dalamnya.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                )
                              ]),
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
                    title: const Text('11. Pengendalian Hama & Penyakit',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image:
                                        AssetImage('image/penyakitkopii.png')),
                                const Text(''),
                                const Text(
                                  'Hama Tanaman Kopi',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
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
                                      Text('',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text('',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('1.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Kutu Perisai Hijau (Coccus viridis)',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Terdapat dua tipe kerusakan yang disebabkan oleh hama ini yaitu gugur buah muda dan penurunan hasil panen secara kualitas maupun kuantitas. Penanganan dapat dilakukan dengan pemupukan rutin, pengendalian gulma, pemangkasan, memetik buah yang terserang PBKo dan mengubur untuk dijadikan kompos, dan pemanfaatan insektisida nabati.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('2 ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Penggerek Batang Merah (Zeuzera Coffeae)',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Ciri-ciri yang dapat dilihat dari hama ini yaitu adanya serbuk gerek berbentuk bulatan kecil dengan diameter 1-2mm. Pengendalian dilakukan pemeliharaan sesuai GAP, memusnahkan bagian yang terserang, menggunakan perangkap, pemanfaatan parasitoid dan insektisida nabati/kimia.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('3',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Penggerek Cabang dan Ranting (Xylosandrus compactus)',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Hal ini disebabkan adnya larva dan kumbang aktif menggerek jaringan kayu yang memutus aliran nutrisi. Pengendalian dilakukan dengan pemeliharaan sesuai dengan GAP, memotong bagian tanaman yang terserang, memanfaatkan perangkap kumbang, pemanfaatan jammur pantogen dan insektisida nabati.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('4',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text('Kutu Hijau (Coccus viridis) ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Kutu ini biasanya bergerombol pada bagian bawah daun terutama tulang daun. Pengendalian dapat dilakukan dengan pemangkasan rutin, penggunaan insektisida, dan pemanfaatan Azia lutiepes dan Halmus chalybeus',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('5',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text('Wereng (Sanurus indecora)',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Sering ditemukan pada bagian bawah daun dengan terlihat seperti tertutup lapisan lilin tebal. Pengendalian dapat dengan menyemprot dengan air tekanan tinggi, menanam tanaman disukai hama wareng sebagai perangkap, pemanfaatan insektisida, pemanfaatan jamur patogen serangga, penggunaan insektisida dan penggunaan pestisida.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' '),
                                      Text(''),
                                    ]),
                                  ],
                                ),
                                const Text(
                                  'Penyakit Tanaman Kopi',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
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
                                      Text('',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text('',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('1.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text('Karat Daun (Hemileia vastatri',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Gejala penyakit diawali dengan muncul bercak kuning jingga pada daun seperti serbuk. Pengendalian dapat dilakukan sejak dinin dengan memilih bibit unggul tahan penyakit, pemupukan rutin, pemangkasan, pengelolaan naungan, dan penggunaan fungisida nabati/kimia',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('2 ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Bercak Daun (Cercospora coffeicola)',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Gejala penyakit ini ditandai dengan munculnya bercak bulat, coklat kemerahan atau coklat tua, berbatas jelas, dan konsentris. Pengendalian dilakukan dengan pengurangan kelembaban, melakukan sanitasi daun, mengatur peneduh pada pengendalian penyakit buah, dan dengan memanfaatkan fungisida kimia.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('3',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text('Jamur Upas (Upasia salmonicolor)',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Gejala pada penyakit ini adalah bagian yang terserang akan layu mendadak. Pengendalian dilakukan dengan membuang cabang yang terserang, Pemangkasan untung mengatur kelembaban, dan mengoleskan fungisida pada ranting yang terserang.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('4',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text('Kanker Belah (Armillaria sp.)',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Gejala penyakit ini ditandai dengan daun-daun yang menguning. Pengendalian dilakukan dengan membongkar tanaman yang terserang beserta akarnya, membuat drainase, eredikasi kebun selama satu tahun, dan penggunaan fungisida.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('5',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Jamur Akar (Rigidoporus lignosus, Phellinus noxius, dan Roselina bunodes)',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Gejala serangan jamur akar yaitu daun menguning, layu dan rontok. Penanganan dilakukan dengan sanitasi kebun atau membongkar tanaman beserta akar, pembuatan parit isolasi, dan penggunaan fungisida.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('6',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text('Mati Pucuk',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Gejala penyakit ini adalah ujung batang, cabang atau ranting, yang disertai dengan menguning dan gugurnya daun yang terserang. Penanganan dilakukan dengan memotong cabang yang menunjukkan gejala penyakit, penggunaan fungisida tembaga pada kebun pembenihan, membuat pohon kopi berbatang 3 atau 4.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('7',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Penyakit Rebah Batang (Rhizoctonia solani)',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Gejala penyakit ini awalnya terjadi memar, kemudian busuk dan akhirnya mengering sehingga batang tampak berlekuk. Pengendalian dilakukan mengurangi kelembaban pad pembenihan, sterilisasi media semai, penambahan Trichoderma sp. dengan dosisi 2 gr pad polibag, mengeluarkan benih yang terserang dari tempat pembenihan dan penggunaan fungisida kimia.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('8',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Penyakit Yang Disebabkan Oleh Nematoda',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          '     Gejala penyakit ini dapat dilihat pada tanaman di atas permukaan tanah atau akar. Gejala pada bagian atas terlihat pertumbuhan yang terhambat, daun menguning, layu dan gugur serta cabang-cabang samping tidak tumbuh. Penanganan dilakukan dengan menanam bibit yang tahan terhadap nematoda, pemupukan dan penggunaan tanah antagonis, penggunaan agens hayati, penggunaan pestisida nabati, dan penggunaan nematisida kimia.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text(' '),
                                      Text(''),
                                    ]),
                                  ],
                                ),
                              ]),
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
                    title: const Text('12. Panen',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/panen2.jpg')),
                                const Text(''),
                                const Text(
                                  '    Budidaya kopi, jika semua prosesnya dilakukan secara intensif maka membuahkan hasil dalam waktu kurang dari lima tahun. Tergantung jenis kopi yang kamu tanam. Untuk kopi robusta, buahnya akan mulai muncul pada umur 2,5 tahun – 3 tahun. Sedangkan arabika pada umur 3 tahun – 4 tahun.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(
                                  '    Setelah buahnya matang, kamu bisa mulai proses pemanenan dengan cara manual, yaitu memetik buah dari pohonnya langsung. Sayangnya, saat panen perdana, biasanya belum bisa menghasilkan dalam jumlah banyak. Tapi tanaman kopi akan terus berbuah hingga mencapai puncak produksi pada umur 7 tahun – 9 tahun.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(
                                  '    Satu periode panen umumnya berlangsung antara 4 – 5 bulan. Dalam periode ini, pemetikan harus dilakukan sekitar 10 – 14 hari sekali sampai tanaman tidak berbuah lagi.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                )
                              ]),
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
                    title: const Text('13. Distribusi Hasil Panen',
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
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Column(
                            children: [
                              Column(children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                const Image(
                                    image: AssetImage('image/pengemasan.jpg')),
                                const Text(''),
                                const Text(
                                  '     Saat panen, semua kopi yang dipetik dalam hari yang sama harus dikumpulkan dan disortir berdasarkan kualitasnya. Setelah itu, lakukan beberapa tahapan ini:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
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
                                      Text(''),
                                      Text(''),
                                    ]),
                                    TableRow(children: [
                                      Text('1.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Mengupas kulit buah menggunakan mesin pengupas berjenis silinder atau secara tradisional seperti pada proses seleksi calon benih',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('2',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Untuk kopi arabika, lakukan fermentasi agar lapisan lendir hilang.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('3 ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Mengeringkan biji untuk mengurangi kadar air di dalamnya menjadi 12%',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('4',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Sortir kembali biji berdasarkan ukuran, kebersihan, dan kemulusan',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                    TableRow(children: [
                                      Text('5',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                      Text(
                                          'Simpan biji kopi yang siap didistribusikan di dalam gudang',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 0, 75, 12))),
                                    ]),
                                  ],
                                ),
                              ]),
                            ],
                          )),
                    ],
                    onExpansionChanged: (
                      bool expanded,
                    ) {
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
