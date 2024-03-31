import 'package:flutter/material.dart';

class JenisArabika extends StatefulWidget {
  const JenisArabika({super.key});
  @override
  State<JenisArabika> createState() => _JenisArabikaState();
}

class _JenisArabikaState extends State<JenisArabika> {
  get centerKey => null;
  bool _customTileExpanded = false;

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
                      offset: Offset(2, 4), // Shadow position
                    ),
                  ],
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    child: const Text(
                      'Arabika',
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
                          Image(image: AssetImage('image/Arabika1.jpg')),
                          Text(''),
                          Text(
                            '     Kopi arabika (Coffea arabica), juga dikenal sebagai kopi Arab, kopi semak Arab, atau kopi gunung, adalah spesies dari genus Coffea. Spesies ini diyakini sebagai spesies kopi pertama yang dibudidayakan, dan merupakan kultivar dominan, mewakili sekitar 60% dari produksi kopi global.[1] Jenis kopi lain yang banyak dibudidayakan adalah kopi robusta (C. canephora) (kurang asam, lebih pahit, dan lebih berkafein tinggi dibanding kopi arabika). Kopi arabika berasal dari Ethiopia. Kopi ini tercatat pertama kali dibudidayakan di Yaman, dan didokumentasikan pada abad ke-12.[2][3] Coffea arabica disebut (būnn) dalam bahasa Arab, yang diambil dari bahasa Oromo "Buna".',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 75, 12)),
                          ),
                          Text('')
                        ],
                      )),
                  ExpansionTile(
                    title: const Text('Taksonomi',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 75, 12))),
                    trailing: Icon(_customTileExpanded
                        ? Icons.arrow_drop_down_circle
                        : Icons.arrow_drop_down),
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: const Column(
                            children: [
                              Column(children: [
                                Text(
                                  '     Coffea arabica pertama kali dideskripsikan secara ilmiah oleh Antoine de Jussieu, yang menamainya Jasminum arabicum setelah mempelajari spesimen dari Kebun Raya Amsterdam. Linnaeus menempatkannya dalam genusnya sendiri Coffea pada tahun 1737.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                Text(''),
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
                                    '     Biji Arabika biasanya lebih besar dan lebih lonjong dibandingkan dengan biji Robusta dan warna yang lebih cerah dan lebih cerah. Daun Arabika cenderung lebih kecil dan lebih lebar dan Warna daun Arabika bisa beragam dari hijau muda hingga hijau tua, tergantung pada varietas dan kondisi pertumbuhan',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 75, 12))),
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
                    title: const Text('Varietas di Indonesia',
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
                              Column(children: [
                                const Text(
                                  '     Di Indonesia, perkebunan kopi arabika banyak ditemui di daerah pegunungan toraja, Sumatra Utara, Aceh dan di beberapa daerah di pulau Jawa. Beberapa varietas kopi arabika yang dikembangkan di Indonesia antara lain kopi arabica jenis Abesinia, arabika jenis Pasumah, Marago, Typica dan kopi arabika Congensis.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                const Text(''),
                                ExpansionTile(
                                  title: const Text('1. Typica',
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
                                                '     Varietas biji kopi arabica jenis Typica ini merupakan varietas pertama yang masuk ke Indonesia. Pertama kali dibawa oleh Belanda ketika datang ke Indonesia. Namun varietas asli Typica yang dibawa oleh Belanda ini kemudian punah ketika Coffee Leaf Rust menyerang Indonesia. Untungnya tidak semua punah, karena masih ada varietas Typica lokal yaitu Bergendal dan Sidikalang yang banyak di temui di dataran tinggi seperti Sumatera, Sulawesi, dan Flores. Biasa berkolasi di perkebunan yang berada di daerah terpencil. Di Papua Varietas Typica ini masih dijumpai di Kampoung Modio, Distrik Mapiha Tengah, Kabupaten Dogiyai, Papua yang di bawa misionaris Belanda.',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        255, 0, 75, 12)),
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
                                  title: const Text('2. Hybrido De Timor (HDT)',
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
                                                '     Varietas biji kopi arabica jenis Typica ini merupakan varietas pertama yang masuk ke Indonesia. Pertama kali dibawa oleh Belanda ketika datang ke Indonesia. Namun varietas asli Typica yang dibawa oleh Belanda ini kemudian punah ketika Coffee Leaf Rust menyerang Indonesia. Untungnya tidak semua punah, karena masih ada varietas Typica lokal yaitu Bergendal dan Sidikalang yang banyak di temui di dataran tinggi seperti Sumatera, Sulawesi, dan Flores. Biasa berkolasi di perkebunan yang berada di daerah terpencil. Di Papua Varietas Typica ini masih dijumpai di Kampoung Modio, Distrik Mapiha Tengah, Kabupaten Dogiyai, Papua yang di bawa misionaris Belanda.',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        255, 0, 75, 12)),
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
                                  title: const Text('3. Linie S',
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
                                                  '     Linie S adalah varietas kopi Arabika yang berasal dari India. Varietas Linie S kemudian di kembangkan menggunakan kultivar Bourbon. Jenis umum yang paling dikenal dari hasil pengembangan Linie S ini adalah S-288 dan S-795. Varietas ini banyak di temukan di daerah dataran tinggi seperti Aceh, Lintong, Jawa, Bali, Sulawesi, Flores dan Papua (di Papua banyak tersebar di Jayawijaya, Lanny Jaya, Kurima, Tangma).',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color.fromARGB(
                                                          255, 0, 75, 12))),
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
                                    title: const Text('4. Linie Ethiopia',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 0, 75, 12))),
                                    trailing: Icon(
                                      _customTileExpanded
                                          ? Icons.keyboard_arrow_down
                                          : Icons.keyboard_arrow_down,
                                    ),
                                    children: <Widget>[
                                      Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: const Column(children: [
                                            Column(children: [
                                              Text(
                                                '     Varietas Kopi Arabika jenis Linie Ethiopia ini pertama kali masuk ke Indonesia tahun 1928, dimana ketika itu pertama kali dibawa ke pulau Jawa. Daerah pertama yang mengembangkan varietas ini adalah Aceh. Varietas lain yang termasuk dalam keturunan Ethiopia adalah Rambung dan Abyssinia. Varietas Linie Ethiopia kemudian dikembangkan juga di Sumatera dan Flores, yang kemudian dikenal dengan nama “USDA”, dimana nama ini diambil dari proyek pemerintah Amerika Serikat kala itu pada tahun 1950 ketika berlangsung di Indonesia.',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        255, 0, 75, 12)),
                                              ),
                                              Text('')
                                            ])
                                          ]))
                                    ],
                                    onExpansionChanged: (bool expanded) {
                                      setState(() {
                                        _customTileExpanded = expanded;
                                      });
                                    }),
                                ExpansionTile(
                                  title: const Text('5. Catura Cultivas',
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
                                        child: const Column(children: [
                                          Column(children: [
                                            Text(
                                              '     Varietas kopi Arabika jenis ini merupakan hasil persilangan dari Kopi Bourbon yang berasal dari Brazil.',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      255, 0, 75, 12)),
                                            ),
                                            Text('')
                                          ])
                                        ]))
                                  ],
                                  onExpansionChanged: (bool expanded) {
                                    setState(() {
                                      _customTileExpanded = expanded;
                                    });
                                  },
                                ),
                                ExpansionTile(
                                  title: const Text('6. Lini Catimor',
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
                                                '     Varietas Lini Catimor juga mirip dengan Tim Tim, sama-sama hasil persilangan dari Arabika dan Robusta. Namun varietas ini dikenal sebagai jenis varietas yang kurang baik, karena memiliki aroma dan rasa yang tidak sebaik kopi lain nya. Namun kini sedang dilakukan penelitian lebih lanjut mengenai varietas ini, karena di daerah Aceh, varietas ini memiliki aroma dan rasa yang baik, biasa nya petani kopi Aceh menyebutkan dengan varietas “Ateng Jaluk“.',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        255, 0, 75, 12)),
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
                            Column(
                              children: [
                                Image(
                                    image: AssetImage(
                                        'image/statuskonservasiarabika.png')),
                                Text(''),
                                Text(
                                  'Terancam (Genting)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                Text(''),
                                Text(
                                  '     Spesies genting (bahasa Inggris: endangered species) adalah salah satu status konservasi yang ditetapkan oleh Uni Internasional untuk Konservasi Alam (IUCN) untuk mengategorikan spesies yang sangat mungkin menjadi punah dalam waktu dekat. Kategori ini diberi kode endangered (EN) dalam daftar merah IUCN. Pada 2012, sebanyak 3.079 spesies hewan dan 2.655 spesies tanaman di seluruh dunia dikategorikan dalam spesies genting dalam daftar merah IUCN.[1]',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 75, 12)),
                                ),
                                Text(''),
                              ],
                            )
                          ],
                        ),
                      ),
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
