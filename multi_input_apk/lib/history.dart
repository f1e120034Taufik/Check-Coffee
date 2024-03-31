import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MyHistory extends StatefulWidget {
  const MyHistory({super.key});
  @override
  State<MyHistory> createState() => MyHistoryState();
}

class MyHistoryState extends State<MyHistory> {
  @override
  void initState() {
    super.initState();
    initBannerAd();
  }

  late BannerAd bannerAd;
  bool isAdLoaded = false;

  initBannerAd() {
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-9047713899059881/3849665963',
      listener: BannerAdListener(onAdLoaded: (ad) {
        setState(() {
          isAdLoaded = true;
        });
      }, onAdFailedToLoad: ((ad, error) {
        ad.dispose();
        // ignore: avoid_print
        print(error);
      })),
      request: const AdRequest(),
    );
    bannerAd.load();
  }

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? user = FirebaseAuth.instance.currentUser;

  final userEmail = FirebaseAuth.instance.currentUser?.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 205, 82),
        title: const Text('History Deteksi',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
      ),
      body: user != null
          ? StreamBuilder<QuerySnapshot>(
              stream: _firestore
                  .collection('Driver_Details')
                  .where('User', isEqualTo: userEmail)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                var documents = snapshot.data!.docs;

                if (documents.isEmpty) {
                  return const Center(
                    child: Text('Tidak ada gambar yang sesuai'),
                  );
                }

                return ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: (context, index) {
                    if (index < documents.length) {
                      var document = documents[index];
                      var imageUrl = document['Image'];
                      var imageName = document['Name'];
                      // ignore: non_constant_identifier_names
                      var Akurassi = document['Kemiripan'];

                      return Card(
                          margin: const EdgeInsets.all(10),
                          child: Column(children: [
                            ListTile(
                                leading: FutureBuilder<String>(
                                    future: firebase_storage
                                        .FirebaseStorage.instance
                                        .refFromURL(imageUrl)
                                        .getDownloadURL(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.done) {
                                        if (snapshot.hasError) {
                                          return const Text('?');
                                        }
                                        final imag = snapshot.data!.toString();
                                        return Image.network(imag, width: 50);
                                      } else {
                                        return const CircularProgressIndicator();
                                      }
                                    }),
                                title: Text(imageName),
                                subtitle: Text('Kemiripan : $Akurassi%')),
                          ]));
                    }
                    return null;
                  },
                );
              },
            )
          : const Center(
              child: Text('Anda belum LogIn, Silahkan LogIn terlebih dahulu'),
            ),
    );
  }
}
