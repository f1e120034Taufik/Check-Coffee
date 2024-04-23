import 'package:flutter/material.dart';

class ProdukKopi extends StatefulWidget {
  const ProdukKopi({super.key});
  @override
  State<ProdukKopi> createState() => _ProdukKopiState();
}

class _ProdukKopiState extends State<ProdukKopi> {
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
          'Produk Olahahan Kopi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              '',
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
              child: const Text(
                'Berikut Beberapa Produk Olahan Berbahan Dasar Kopi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color.fromARGB(
                    255,
                    0,
                    75,
                    12,
                  ),
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10,
                ),
                child: const Divider(
                  color: Colors.black,
                )),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
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
              child: ExpansionTile(
                title: const Text('1. Mie Campur Sianida',
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
                          horizontal: 10.0, vertical: 10),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15),
                            child: Column(children: [
                              const Text('Mie Campur Sianida',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 75, 12))),
                              Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: const Divider(
                                    color: Colors.black,
                                  )),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: const Image(
                                    image: AssetImage(
                                        'image/miecampursianida1.jpg')),
                              ),
                              const Text(
                                '     Ternyata bukan hanya kopi sianida yang populer di kalangan masyarakat akibat kasus pembunuhan Mirna. Mie campur Sianida juga menjadi populer. Namun jangan salah mi ini tidak dicampur dengan sianida namun hanya dicampur bubuk kopi kemudian diolah dan dicetak menjadi mie. Sehingga warnanya menjadi hitam gelap. Namun rasanya tidak pahit melainkan sangat pedas mulai dari suapan pertama. Meski pedas mi ini justru bikin ketagihan karena rasanya yang enak dan teksturnya yang kenyal. Selain itu mi ini dijamin sehat karena homemade dan tanpa MSG.',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 0, 75, 12)),
                              )
                            ]),
                          )
                        ],
                      )),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    _customTileExpanded = expanded;
                  });
                },
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
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
              child: ExpansionTile(
                title: const Text('2. Nasi Goreng Kopi',
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
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15),
                            child: Column(children: [
                              const Text('Nasi Goreng Kopi',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                      color: Color.fromARGB(255, 0, 75, 12))),
                              Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: const Divider(
                                    color: Colors.black,
                                  )),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: const Image(
                                    image:
                                        AssetImage('image/nasigorengkopi.jpg')),
                              ),
                              const Text(
                                '     Jika biasanya nasi goreng identik dengan nasi yang diberikan bumbu kecap. Namun kali ini beda. Nasi goreng justru dibuat dengan cara memberikan bumbu kopi. Caranya hampir sama dengan nasi goreng pada umumnya hanya saja nasi goreng ini dimasukkan ke dalam udang, cabai kering dan paprika. Untuk kopi sendiri dimasukkan bersamaan dengan saus tiram, saus tomat, kopi bubuk kemudian ditambahkan lada dan garam.',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 0, 75, 12)),
                              )
                            ]),
                          )
                        ],
                      )),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    _customTileExpanded = expanded;
                  });
                },
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
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
              child: ExpansionTile(
                title: const Text('3. Pizza Kopi',
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
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 15),
                          child: Column(children: [
                            const Text('Pizza Kopi',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(255, 0, 75, 12))),
                            Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                child: const Divider(
                                  color: Colors.black,
                                )),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: const Image(
                                  image: AssetImage('image/pizzakopi1.jpg')),
                            ),
                            const Text(
                              '     Jika biasanya topping kopi hanya berisikan keju, daging dan sayuran. Namun kali ini topping berbeda. Topping justru berasal dari olahan kopi. Seperti Mocacino, latte dan espresso. Meski begitu rasanya tak pahit namun tetap renyah, manis, segar dan gurih. Cara  memanggangnya pun cukup unik tidak dipanggang dalam oven melainkan di dalam tungku batu yang menggunakan kayu bakar. Tak lama memanggangnya hanya 10 menit. Pizza yang disajikan ada empat varian yakni moccachino pizza, coffe late pizza dan expresso pizza.',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 0, 75, 12)),
                            )
                          ]),
                        )
                      ],
                    ),
                  )
                ],
                onExpansionChanged: (bool expanded) {
                  setState(
                    () {
                      _customTileExpanded = expanded;
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
