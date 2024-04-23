import 'package:flutter/material.dart';

class PengolahanKopi extends StatefulWidget {
  const PengolahanKopi({super.key});
  @override
  State<PengolahanKopi> createState() => _PengolahanKopi();
}

class _PengolahanKopi extends State<PengolahanKopi> {
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
          'Pengolahan Kopi',
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
                    ), // Shadow position
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const Divider(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    child: const Text(
                      'Berikut ini adalah tahapan pengolahan kopi',
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
                        Image(image: AssetImage('image/panen1.jpg')),
                        Text(''),
                        Text(
                          '     Kopi adalah salah satu potensi ekspor yang penting dalam perdagangan dunia. Indonesia adalah negara pengekspor kopi terbesar keempat di dunia setelah Brazil, Vietnam, dan Kolombia. Sebelum di ekspor atau dikonsumsi, biji kopi diolah untuk mendapatkan kualitas biji kopi yang prima. Dalam proses pengolahan kopi, umumnya dapat dibagi menjadi dua, yaitu pengolahan basah (wet processing) dan pengolahan kering (dry processing). Kopi Arabika umumnya diproses dengan pengolahan basah. Dalam pengolahan kopi yang paling penting adalah cara mendapatkan hasil akhir yang diakui konsumen dengan mutu yang baik dan citarasa yang tinggi.',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 75, 12)),
                        ),
                        Text(''),
                        Text(
                          '     Pada industri kopi, bahan baku utama yang digunakan adalah buah kopi (gelondongan merah) yang baru. Teknis pengolahanan biji kopi yang dilakukan industri pengolah lebih banyak menggunakan mesin, hanya 1 atau 2 saja menggunakan tenaga manusia untuk mengendalikan mesin. Untuk proses sortasi biji kopi secara manual dilakukan oleh kolektor yang merupakan pedagang pengumpul binaan industri pengolah itu sendiri. Penyortiran biji kopi dilakukan oleh kolektor setelah mengumpulkan biji kopi yang berbentuk gelondongan merah dari petani. Beberapa proses pasca panen kopi adalah sebagai berikut.',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 75, 12)),
                        ),
                      ],
                    ),
                  ),
                  ExpansionTile(
                    title: const Text('1. Panen',
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
                                  '     Pemanenan dilakukan dengan sistem petik dan sortasi buah hijau. Buah merah dipetik secara pilih pohon dan buah hijau yang terpetik dipisahkan secara manual dari buah yang merah. Penyortiran bertujuan untuk memilih biji yang baik dari segi mutu (terutama citarasa). Pensortiran buah merah yang terbaik adalah dilakukan di dalam bak berisi air. Di dalam bak ini, kopi diaduk sehingga buah yang berisi penuh akan mengendap kebawah dan yang ringan akan terapung di permukaan air. Buah kopi yang tidak berisi penuh karena terserang hama akan mengambang dan harus dipisahkan untuk diproses secara terpisah.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
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
                    title: const Text('2. Pengupasan Kulit',
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
                                        AssetImage('image/kupaskulitkopi.jpg')),
                                const Text(''),
                                const Text(
                                  '     Setelah proses pemanenan, dilakukan proses pengolahan semi basah yang diawali dengan pengupasan kulit buah dengan mesin pengupas (pulper). Pengupasan buah kopi umumnya dilakukan dengan menyemprotkan air ke dalam silinder bersama dengan buah yang akan dikupas.Aliran air berfungsi untuk membantu mekanisme pengaliran buah kopi di dalam silinder dan sekaligus membersihkan lapisan lendir. Lapisan air juga berfungsi untuk mengurangi tekanan geseran silinder terhadap buah kopi sehingga kulit tanduknya tidak pecah.',
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
                    title: const Text('3. Fermentasi',
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
                                    image: AssetImage('image/fermentasi.jpg')),
                                const Text(''),
                                const Text(
                                  '     Proses fermentasi hanya dilakukan untuk pengolahan kopi Arabika. Tujuan proses ini adalah untuk menghilangkan lapisan lendir yang tersisa di permukaan kulit tanduk biji kopi setelah proses pengupasan. Selain itu, fermentasi juga bertujuan untuk mengurangi rasa pahit dan mendorong terbentuknya kesan “mild” pada citarasa seduhannya. Proses fermentasi dapat dilakukan secara basah (merendam gabah kopi di dalam genangan air) dan secara kering (tanpa rendaman air). Lama fermentasi bervariasi tergantung pada jenis kopi, suhu dan kelembaban lingkungan serta ketebalan tumpukan biji kopi di dalam bak.',
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
                    title: const Text('4. Pencucian dan pengeringan',
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
                                    image: AssetImage('image/pengeringan.jpg')),
                                const Text(''),
                                const Text(
                                  '     Pencucian bertujuan untuk menghilangkan sisa lendir hasil fermentasi yang masih menempel di kulit tanduk. Terdapat dua jenis mesin pencuci, yaitu tipe batch dan tipe continue. Setelah dicuci, biji kopi dikeringkan untuk mengurangi kandungan air dari dalam gabah kopi yang semula 60 – 65 % sampai menjadi 12 – 16 %. Proses pengeringan dapat dilakukan dengan cara penjemuran, mekanis dan kombinasi keduanya.',
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
                    title: const Text('5. Pengupasan Kulit Gabah Kopi',
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
                                    image: AssetImage('image/kulitgabah.jpg')),
                                const Text(''),
                                const Text(
                                  '     Pengupasan bertujuan untuk memisahkan biji kopi dengan kulit tanduk. Proses pengupasan ini sebaiknya dilakukan pada biji kopi yang telah dingin karena sifat fisiknya telah stabil. Pada proses pengupasan, biji kopi diumpankan ke dalam silinder lewat corong pemasukkan dan kemudian masuk celah antara permukaan rotor dan saringan. Kulit tanduk akan terlepas karena gesekan antara permukaan rotor dan terpecah menjadi serpihan ukuran kecil. Permukaan rotor mempunyai ulir dan mampu mendorong biji kopi ke luar silinder, sedangkan serpihan kulit lolos lewat saringan dan terhisap oleh kipas.',
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
                    title: const Text('6. Pengayakan (Grinding) dan Pemolesan',
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
                    title: const Text('7. Sortir Manual',
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
                                  '     Setelah proses sortasi menggunakan mesin grinder, dilakukan sortasi manual oleh pekerja. Sortasi ini berfungsi untuk memisahkan biji yang cacat dengan yang bagus serta memisahkan jenis biji long berry dengan pea berry. Setelah sortasi ini kemudian dilakukan penjemuran lagi dan sesekali biji kopi ditampih untuk menghilangkan kulit ari yang masih menempel pada biji kopi.',
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
                    title: const Text('8. Penggudangan',
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
                                        AssetImage('image/penggudangan.jpg')),
                                const Text(''),
                                const Text(
                                  '    Penggudangan bertujuan untuk menyimpan biji kopi yang telah disortasi dalam kondisi yang aman sebelum di pasarkan ke konsumen. Beberapa faktor penting pada penyimpanan biji kopi adalah kadar air, kelembaban relatif udara dan kebersihan gudang.',
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
                    title: const Text('9. Pengemasan dan Pengepakan',
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
                                  '    Tujuan pengemasan adalah untuk mempertahankan aroma dan citarasa kopi sampai di distribusikan ke konsumen, demikian halnya selama disimpan oleh pemakai. Beberapa faktor yang berpengaruh terhadap keawetan biji kopi selama dikemas adalah kondisi penyimpanan (suhu lingkungan), tingkat sangrai, kadar air kopi di dalam kemasan.',
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
                    title: const Text('10. Proses Kontrol dan Pengawasan Mutu',
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
                                    image: AssetImage('image/kontrol.jpg')),
                                const Text(''),
                                const Text(
                                  '    Proses terakhir yang harus dilakukan adalah proses kontrol dan pengawasan mutu untuk mendapatkan mutu biji kopi yang memenuhi standar. Standar umum pengujian pada biji kopi dilakukan dengan dua cara yakni uji fisik dan uji organoleptik. Uji fisik adalah suatu sistem yang digunakan untuk menilai kualitas dari biji kopi berdasarkan fisiknya, baik menggunakan alat bantu atau menggunakan indra manusia sesuai dengan standar yang berlaku. Standar yang menjadi pedoman pada uji fisik ada dua yakni Standar Nasional Indonesia (SNI) dan Specialty Coffee Association of America (SCAA).',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                )
                              ]),
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
