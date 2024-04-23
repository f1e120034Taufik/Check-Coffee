import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:multi_input_apk/Fitur/Deteksi/classifer.dart';
import 'package:multi_input_apk/Fitur/Deteksi/classifer_float.dart';
import 'package:multi_input_apk/Fitur/Jenis%20Kopi/Jenis-Jenis%20Kopi/jenisarabika.dart';
import 'package:multi_input_apk/Fitur/Jenis%20Kopi/Jenis-Jenis%20Kopi/jenisliberika.dart';
import 'package:multi_input_apk/Fitur/Jenis%20Kopi/Jenis-Jenis%20Kopi/jenisrobusta.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/percent_indicator.dart';
// ignore: depend_on_referenced_packages
import 'package:image/image.dart' as img;

class Camera extends StatefulWidget {
  const Camera({
    super.key,
  });
  @override
  MyCameraState createState() => MyCameraState();
}

class MyCameraState extends State {
  bool showProgress = true;

  @override
  void initState() {
    super.initState();
    koneksi();
    Future.delayed(
      const Duration(
        seconds: 8,
      ),
      () {
        setState(
          () {
            showProgress = false;
          },
        );
      },
    );
  }

  final firestore = FirebaseFirestore.instance;

  get data => null;
  File? imageFile;

  final picker = ImagePicker();

  //get img => null;
  Category? category;
  Category? category0;
  Category? category1;
  Category? category2;

  late Classifier _classifier;

  bool cameraOff = false;
  final Connectivity _connectivity = Connectivity();

  Future<void> koneksi() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      setState(
        () {
          cameraOff = true;
        },
      );
    } else {
      setState(
        () {
          cameraOff = false;
        },
      );
    }

    _connectivity.onConnectivityChanged.listen(
      (
        event,
      ) {
        if (event == ConnectivityResult.none) {
          setState(
            () {
              cameraOff = true;
            },
          );
        } else {
          setState(
            () {
              cameraOff = false;
            },
          );
        }
      },
    );
  }

  // ignore: non_constant_identifier_names
  Future<Map<String, dynamic>> APIdeteksi() async {
    var image = imageFile;
    var bytes = await image?.readAsBytes();
    var fileContent = base64Encode(
      bytes!,
    );
    var postData = utf8.encode(
      fileContent,
    );

    // Initialize Inference Server Request with 9WvQLRrN1dMk1T1oSXiV, Model, and Model Version
    var url = Uri.parse(
      "https://classify.roboflow.com/cofee-clasification/1?api_key=gTiK8UrLxIXDZhw1Rv7B&name=YOUR_IMAGE.jpg",
    );
    var request = http.Request(
      'POST',
      url,
    );
    request.headers.addAll(
      {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );
    request.bodyBytes = postData;

    // Execute Post Request
    var response = await request.send();
    var responseData = await response.stream.bytesToString();

    // Convert Response String to Dictionary
    var dict = jsonDecode(
      responseData,
    );

    print(
      dict,
    );
    return dict;
  }

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
          'Deteksi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromARGB(
                  255,
                  255,
                  255,
                  255,
                ),
                width: 3.0,
              ),
            ),
            image: DecorationImage(
              image: AssetImage(
                "image/bg-01.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 0,
              right: 0,
              top: 200.0,
            ),
            decoration: const BoxDecoration(
              color: Color.fromARGB(
                255,
                201,
                255,
                232,
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  20.0,
                ),
              ),
            ),
            child: imageFile == null
                ? Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 40,
                          ),
                          child: const Text(
                            'Pilih metode ambil gambar',
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  width: 78.0,
                                  height: 78.0,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      if (cameraOff = false) {
                                        _getFromGalleryon();
                                      } else {
                                        _getFromGallery();
                                      }
                                      koneksi();
                                    },
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
                                      Icons.image,
                                      color: Colors.black,
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Galeri',
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
                            const SizedBox(
                              width: 78.0,
                              height: 78.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  width: 78.0,
                                  height: 78.0,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (cameraOff == false) {
                                        _getFromCameraon();
                                      } else {
                                        _getFromCamera();
                                      }
                                      koneksi();
                                    },
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
                                      Icons.camera_alt,
                                      color: Colors.black,
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Kamera',
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
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.warning,
                                color: Color.fromARGB(
                                  255,
                                  255,
                                  140,
                                  0,
                                ),
                                size: 25.0,
                              ),
                              Text(
                                '    ',
                              ),
                              Text(
                                'Warning',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(
                                    255,
                                    134,
                                    58,
                                    0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                          child: Table(
                            border: TableBorder.all(
                              color: const Color.fromARGB(255, 201, 255, 232),
                            ),
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
                                        color: Color.fromARGB(255, 0, 75, 12))),
                                Text('',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                              ]),
                              TableRow(children: [
                                Text('1.',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                                Text(
                                    'Pastikan foto yang di upload adalah bagian dari biji, buah, atau daun dari tanaman kopi',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                              ]),
                              TableRow(children: [
                                Text('2',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                                Text(
                                    'Objek selain bagian dari tanaman kopi akan tetap terdeteksi sebagai kopi',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                              ]),
                              TableRow(children: [
                                Text('3',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                                Text(
                                    'Pastikan kualitas pengambilan gambar baik (pencahayaan, jarak pengambilan gambar, dan tidak blur)',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                              ]),
                              TableRow(children: [
                                Text('4',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                                Text(
                                    'Pastikan Buah, Biji, atau daun yang di deteksi dalam keadaan utuh.',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                              ]),
                              TableRow(children: [
                                Text('5',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                                Text(
                                    'Pastikan biji yang di deteksi merupakan biji kering yang belum di sangrai (roasting) dan buah yang di deteksi dalam kondisi sudah merah atau matang',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 75, 12))),
                              ]),
                              TableRow(children: [
                                Text(' '),
                                Text(''),
                              ]),
                            ],
                          ),
                        ),
                        /*
                      Container(
                        child: isAdLoaded
                            ? SizedBox(
                                height: bannerAd.size.height.toDouble(),
                                width: bannerAd.size.width.toDouble(),
                                child: AdWidget(ad: bannerAd),
                              )
                            : const SizedBox(),
                      )*/
                      ],
                    ),
                  )
                : cameraOff
                    ? Center(
                        child: showProgress
                            ? const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Memuat hasil prediksi',
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
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CircularProgressIndicator(
                                    strokeWidth: 5.0,
                                    valueColor: AlwaysStoppedAnimation(
                                      Color.fromARGB(
                                        255,
                                        0,
                                        75,
                                        12,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 20,
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
                                        vertical: 20,
                                        horizontal: 40,
                                      ),
                                      child: Column(
                                        children: [
                                          category!.score > 0.6
                                              ? Text(
                                                  category0 != null
                                                      ? 'Prediksi : ${category!.label}'
                                                      : 'Prediksi : ',
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                    color: Color.fromARGB(
                                                      255,
                                                      0,
                                                      75,
                                                      12,
                                                    ),
                                                  ),
                                                )
                                              : Column(
                                                  children: [
                                                    Text(
                                                      category0 != null
                                                          ? 'Prediksi : ${category!.label}'
                                                          : 'Prediksi : ',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 24,
                                                        color: Color.fromARGB(
                                                          255,
                                                          0,
                                                          75,
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    const Text(
                                                      '* Tingkat kemiripan terlalu rendah',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Color.fromARGB(
                                                            255, 163, 87, 0),
                                                      ),
                                                    ),
                                                    const Text(
                                                      'Hasil deteksi diragukan',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Color.fromARGB(
                                                            255, 163, 87, 0),
                                                      ),
                                                    )
                                                  ],
                                                )
                                        ],
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
                                        horizontal: 25.0,
                                        vertical: 10,
                                      ),
                                      child: Image.file(
                                        imageFile!,
                                        height:
                                            200.0, // Set the desired maximum height
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 25.0,
                                        ),
                                        child: const Divider(
                                          color: Colors.black,
                                        )),
                                    const Text(
                                      'Kemiripan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color.fromARGB(
                                          255,
                                          0,
                                          75,
                                          12,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 25.0,
                                        vertical: 10,
                                      ),
                                      child: Table(
                                        border: TableBorder.all(
                                          color: const Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255,
                                          ),
                                        ),
                                        children: [
                                          TableRow(
                                            children: [
                                              CircularPercentIndicator(
                                                radius: 40.0,
                                                lineWidth: 13.0,
                                                animation: true,
                                                animationDuration: 3000,
                                                percent: category0!.score,
                                                center: Text(
                                                  "${(category0!.score * 100).toStringAsFixed(2)}%",
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                footer: Text(
                                                  category0!.label,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                progressColor: Colors.green,
                                              ),
                                              CircularPercentIndicator(
                                                radius: 40.0,
                                                lineWidth: 13.0,
                                                animation: true,
                                                animationDuration: 3000,
                                                percent: category1!.score,
                                                center: Text(
                                                  "${(category1!.score * 100).toStringAsFixed(2)}%",
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                footer: Text(
                                                  category1!.label,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                progressColor: Colors.green,
                                              ),
                                              CircularPercentIndicator(
                                                radius: 40.0,
                                                lineWidth: 13.0,
                                                animation: true,
                                                animationDuration: 3000,
                                                percent: category2!.score,
                                                center: Text(
                                                  "${(category2!.score * 100).toStringAsFixed(2)}%",
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                footer: Text(
                                                  category2!.label,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                progressColor: Colors.green,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                          255,
                                          255,
                                          255,
                                          255,
                                        ),
                                      ),
                                      onPressed: () {
                                        if (category!.label == 'Robusta') {
                                          Navigator.of(
                                            context,
                                          ).push(
                                            MaterialPageRoute(
                                              builder: (
                                                BuildContext context,
                                              ) =>
                                                  const JenisRobusta(),
                                            ),
                                          );
                                        } else if (category!.label ==
                                            'Arabika') {
                                          Navigator.of(
                                            context,
                                          ).push(
                                            MaterialPageRoute(
                                              builder: (
                                                BuildContext context,
                                              ) =>
                                                  const JenisArabika(),
                                            ),
                                          );
                                        } else if (category!.label ==
                                            'Liberika') {
                                          Navigator.of(
                                            context,
                                          ).push(
                                            MaterialPageRoute(
                                              builder: (
                                                BuildContext context,
                                              ) =>
                                                  const JenisLiberika(),
                                            ),
                                          );
                                        }
                                      },
                                      child: Text(
                                        category != null
                                            ? 'Selengkapnya tentang ${category!.label}'
                                            : '',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                            255,
                                            0,
                                            205,
                                            82,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      '',
                                    )
                                  ],
                                ),
                              ),
                      )
                    : FutureBuilder<Map<String, dynamic>>(
                        future: APIdeteksi(),
                        builder: (
                          context,
                          snapshot,
                        ) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    'Memuat hasil prediksi',
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
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CircularProgressIndicator(
                                    strokeWidth: 5.0,
                                    valueColor: AlwaysStoppedAnimation(
                                      Color.fromARGB(
                                        255,
                                        0,
                                        75,
                                        12,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            );
                            // Tampilkan indikator loading saat Future masih berjalan.
                          } else if (snapshot.hasError) {
                            /*return Text(
                              'Error: ${snapshot.error}',
                            );*/
                            print(snapshot.error);
                            return const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    'Memuat hasil prediksi',
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.warning,
                                        color: Color.fromARGB(255, 255, 140, 0),
                                        size: 25.0,
                                      ),
                                      Text('  '),
                                      Column(
                                        children: [
                                          Text(
                                            'Koneksi buruk, matikan data seluler / WiFi',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: Color.fromARGB(
                                                  255, 130, 32, 0),
                                            ),
                                          ),
                                          Text(
                                            'untuk menggunakan secara offline',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: Color.fromARGB(
                                                  255, 130, 32, 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CircularProgressIndicator(
                                    strokeWidth: 5.0,
                                    valueColor: AlwaysStoppedAnimation(
                                      Color.fromARGB(
                                        255,
                                        0,
                                        75,
                                        12,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            );
                          } else {
                            // Tampilkan hasil dari Future di sini
                            final responseData = snapshot.data!["top"];

                            if (responseData == null) {
                              // Lakukan sesuatu dengan responseData
                              return Center(
                                child: Text(
                                  'Response Data: ${snapshot.data!["top"]}',
                                ),
                              );
                            } else {
                              // Tangani jika responseData kosong
                              return Center(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 20,
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
                                            vertical: 20,
                                            horizontal: 40,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              snapshot.data!['confidence'] > 0.6
                                                  ? Text(
                                                      'Prediksi : ${snapshot.data!['top']}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 24,
                                                        color: Color.fromARGB(
                                                          255,
                                                          0,
                                                          75,
                                                          12,
                                                        ),
                                                      ),
                                                    )
                                                  : Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Prediksi : ${snapshot.data!['top']}',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style:
                                                              const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 24,
                                                            color:
                                                                Color.fromARGB(
                                                              255,
                                                              0,
                                                              75,
                                                              12,
                                                            ),
                                                          ),
                                                        ),
                                                        const Text(
                                                          '* Tingkat kemiripan terlalu rendah',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    163,
                                                                    87,
                                                                    0),
                                                          ),
                                                        ),
                                                        const Text(
                                                          'Hasil deteksi diragukan',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    163,
                                                                    87,
                                                                    0),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                            ],
                                          )),
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
                                          horizontal: 25.0,
                                          vertical: 10,
                                        ),
                                        child: Image.file(
                                          imageFile!,
                                          height:
                                              200.0, // Set the desired maximum height
                                          fit: BoxFit.cover,
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
                                      const Text(
                                        'Kemiripan',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                            255,
                                            0,
                                            75,
                                            12,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 25.0,
                                          vertical: 10,
                                        ),
                                        child: Table(
                                          border: TableBorder.all(
                                            color: const Color.fromARGB(
                                              255,
                                              255,
                                              255,
                                              255,
                                            ),
                                          ),
                                          /*
                                      columnWidths: const {
                                        0: FlexColumnWidth(2),
                                        1: FlexColumnWidth(4),
                                        2: FlexColumnWidth(2),
                                      },
                                      */
                                          children: [
                                            TableRow(
                                              children: [
                                                Container(
                                                  height: 100,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    //shrinkWrap: true,
                                                    //scrollDirection:
                                                    //Axis.horizontal,
                                                    children: [
                                                      for (var predictt
                                                          in snapshot.data![
                                                              "predictions"])
                                                        Center(
                                                          child: Row(
                                                            children: [
                                                              const VerticalDivider(
                                                                width: 10,
                                                                thickness: 1,
                                                                indent: 1,
                                                                endIndent: 0,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                              ),
                                                              CircularPercentIndicator(
                                                                radius: 35.0,
                                                                lineWidth: 11.0,
                                                                animation: true,
                                                                animationDuration:
                                                                    3000,
                                                                percent: predictt[
                                                                    'confidence'],
                                                                center: Text(
                                                                  "${(predictt['confidence'] * 100).toStringAsFixed(2)}%",
                                                                  style:
                                                                      const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                                ),
                                                                footer: Text(
                                                                  predictt[
                                                                      'class'],
                                                                  style:
                                                                      const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                                ),
                                                                progressColor:
                                                                    Colors
                                                                        .green,
                                                              ),
                                                              const VerticalDivider(
                                                                width: 10,
                                                                thickness: 1,
                                                                indent: 1,
                                                                endIndent: 0,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255,
                                          ),
                                        ),
                                        onPressed: () {
                                          if (snapshot.data!['top'] ==
                                              'Arabika') {
                                            Navigator.of(
                                              context,
                                            ).push(
                                              MaterialPageRoute(
                                                builder: (
                                                  BuildContext context,
                                                ) =>
                                                    const JenisArabika(),
                                              ),
                                            );
                                          } else if (snapshot.data!['top'] ==
                                              'Buah Robusta') {
                                            Navigator.of(
                                              context,
                                            ).push(
                                              MaterialPageRoute(
                                                builder: (
                                                  BuildContext context,
                                                ) =>
                                                    const JenisRobusta(),
                                              ),
                                            );
                                          } else if (snapshot.data!['top'] ==
                                              'Liberika') {
                                            Navigator.of(
                                              context,
                                            ).push(
                                              MaterialPageRoute(
                                                builder: (
                                                  BuildContext context,
                                                ) =>
                                                    const JenisLiberika(),
                                              ),
                                            );
                                          }
                                        },
                                        child: Text(
                                          'Selengkapnya tentang ${snapshot.data!['top']}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                              255,
                                              0,
                                              205,
                                              82,
                                            ),
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () async {
                                          if (imageFile != null) {
                                            User? user = FirebaseAuth
                                                .instance.currentUser;
                                            if (user != null) {
                                              final userEmail = FirebaseAuth
                                                  .instance.currentUser?.email;
                                              //String userId = user.uid;
                                              var imageName = DateTime.now()
                                                  .millisecondsSinceEpoch
                                                  .toString();
                                              var storageRef = FirebaseStorage
                                                  .instance
                                                  .ref()
                                                  .child(
                                                    'driver_images/$imageName.jpg',
                                                  );
                                              var uploadTask =
                                                  storageRef.putFile(
                                                imageFile!,
                                              );
                                              var downloadUrl =
                                                  await (await uploadTask)
                                                      .ref
                                                      .getDownloadURL();
                                              var confidence =
                                                  snapshot.data!["confidence"] *
                                                      100;
                                              firestore
                                                  .collection("Driver_Details")
                                                  .add({
                                                "Name": snapshot.data!["top"],
                                                "Kemiripan": confidence
                                                    .toStringAsFixed(2),
                                                "Image": downloadUrl.toString(),
                                                "User": userEmail,
                                              });
                                              try {
                                                await storageRef.putFile(
                                                  imageFile!,
                                                );
                                                Fluttertoast.showToast(
                                                  msg:
                                                      'Gambar berhasil ditambahkan ke History',
                                                  toastLength:
                                                      Toast.LENGTH_LONG,
                                                  gravity: ToastGravity.BOTTOM,
                                                  backgroundColor: Colors.green,
                                                  textColor:
                                                      const Color.fromARGB(
                                                          141, 197, 196, 196),
                                                );
                                              } catch (e) {
                                                Fluttertoast.showToast(
                                                  msg: 'Error:$e',
                                                  toastLength:
                                                      Toast.LENGTH_LONG,
                                                  gravity: ToastGravity.BOTTOM,
                                                  backgroundColor: Colors.red,
                                                  textColor: Colors.white,
                                                );
                                              }
                                            }
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                            255,
                                            0,
                                            205,
                                            82,
                                          ),
                                        ),
                                        child: const Text(
                                          'Tambah ke History',
                                        ),
                                      ),
                                      const Text(
                                        '',
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }
                          }
                        },
                      ),
          ),
        ),
      ),
    );
  }

  XFile? pickedFile;

  _getFromGallery() async {
    pickedFile = (await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 720,
      maxHeight: 720,
    ));
    if (pickedFile != null) {
      setState(
        () {
          imageFile = File(
            pickedFile!.path,
          );
          _predict();
        },
      );

      _classifier = ClassifierFloat();
      //processImage();
    }
  }

  _getFromGalleryon() async {
    pickedFile = (await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 720,
      maxHeight: 720,
    ));
    if (pickedFile != null) {
      setState(
        () {
          imageFile = File(
            pickedFile!.path,
          );
        },
      );

      _classifier = ClassifierFloat();
      //processImage();
    }
  }

  _getFromCamera() async {
    pickedFile = (await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 720,
      maxHeight: 720,
    ));
    if (pickedFile != null) {
      setState(
        () {
          imageFile = File(
            pickedFile!.path,
          );
          _predict();
        },
      );

      _classifier = ClassifierFloat();

      //processImage();
    }
  }

  _getFromCameraon() async {
    pickedFile = (await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 720,
      maxHeight: 720,
    ));
    if (pickedFile != null) {
      setState(
        () {
          imageFile = File(
            pickedFile!.path,
          );
        },
      );

      _classifier = ClassifierFloat();

      //processImage();
    }
  }

  Uint8List? imageBytes;

  void _predict() async {
    if (imageFile != null) {
      imageBytes = await imageFile!.readAsBytes();
      img.Image? imageInput = img.decodeImage(
        Uint8List.fromList(
          imageBytes!,
        ),
      );
      if (imageInput != null) {
        Category pred = _classifier.predict(
          imageInput,
        );
        Category pred0 = _classifier.predict0(
          imageInput,
        );
        Category pred1 = _classifier.predict1(
          imageInput,
        );
        Category pred2 = _classifier.predict2(
          imageInput,
        );
        // ignore: avoid_print
        print(
          pred0,
        );
        setState(() {
          category = pred;
          category0 = pred0;
          category1 = pred1;
          category2 = pred2;
          // ignore: avoid_print
          print(
            'o',
          );
          // ignore: avoid_print
          print(
            category,
          );
        });
      } else {
        // ignore: avoid_print
        print(
          'Failed to decode image.',
        );
      }
    } else {
      // ignore: avoid_print
      print(
        'Image file is null.',
      );
    }
  }

/*
// Load model
Future<void> loadModel() async {
  final options = InterpreterOptions();
  // Load model from assets
  Interpreter interpreter = await Interpreter.fromAsset('multi_input.tflite', options: options);
  // Get tensor input shape [1, 224, 224, 3]
  interpreter.getInputTensors().first;
  // Get tensor output shape [1, 1001]
  interpreter.getOutputTensors().first;
  setState(() {});
  log('Interpreter loaded successfully');
}


// Load labels from assets
Future<void> loadLabels() async {
  final labelTxt = await rootBundle.loadString('Labels/txt');
  var labels = labelTxt.split('\n');
}
*/

  //late List _output = result;
}
