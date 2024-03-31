import 'package:flutter/material.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';

class MyQuiz extends StatefulWidget {
  const MyQuiz({super.key});
  @override
  State<MyQuiz> createState() => _MyQuizstate();
}

class _MyQuizstate extends State<MyQuiz> {
  @override
  void initState() {
    super.initState();
    //initBannerAd();
  }

/*
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
        print(error);
      })),
      request: AdRequest(),
    );
    bannerAd.load();
  }
*/
  final _questions = const [
    {
      'questionText': '1. Bagaimana bentuk biji kopi?',
      'answers': [
        {'text': 'tidak rata, asimetris', 'score': 0},
        {'text': 'Oval/lonjong', 'score': 10},
        {'text': 'Bundar', 'score': 20},
      ],
    },
    {
      'questionText': '2. Garis pada biji?',
      'answers': [
        {'text': 'Tidak beraturan', 'score': 0},
        {'text': 'Berkelok', 'score': 10},
        {'text': 'Lurus', 'score': 20},
      ],
    },
    {
      'questionText': ' 3. Aroma',
      'answers': [
        {'text': 'Sangat menyengat', 'score': 0},
        {'text': 'Harum seperti buah-buahan', 'score': 10},
        {'text': 'Seperti kacang-kacangan', 'score': 20},
      ],
    },
    {
      'questionText': '4. ukuran',
      'answers': [
        {'text': 'sangat besar', 'score': 0},
        {'text': 'sedang', 'score': 10},
        {'text': 'kecil', 'score': 20},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 205, 82),
        title: const Text('Kuis',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
      ),
      body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              _questionIndex < _questions.length
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    )
                  : Result(_totalScore, _resetQuiz),
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
          )),
    );
  }
}

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer['text'].toString(),
          );
        }).toList(),
      ],
    );
  }
}

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Color.fromARGB(255, 0, 75, 12)),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => selectHandler(),
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
              const TextStyle(color: Color.fromARGB(255, 0, 75, 12))),
          backgroundColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 0, 205, 82)),
        ),
        child: Text(answerText),
      ),
    );
  }
}

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          /*
          Text(
            'Score ' '$resultScore',
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),*/
          // ignore: unnecessary_string_interpolations
          Image(image: AssetImage('$resultImage')),
          TextButton(
            onPressed: () => resetHandler(),
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(color: Color.fromARGB(255, 0, 75, 12)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String get resultPhrase {
    String resultText;
    if (resultScore >= 50) {
      resultText = 'Robusta';
    } else if (resultScore >= 31) {
      resultText = 'Arabika';
    } else {
      resultText = 'Liberika';
    }
    return resultText;
  }

  String get resultImage {
    String resultGambar;
    if (resultScore >= 50) {
      resultGambar = 'image/robusta2.jpg';
    } else if (resultScore >= 31) {
      resultGambar = 'image/arabika2.jpg';
    } else {
      resultGambar = 'image/liberika2.jpg';
    }
    return resultGambar;
  }
}
