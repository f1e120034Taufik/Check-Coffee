import 'dart:math';
import 'package:logger/logger.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'package:collection/collection.dart';

abstract class Classifier {
  late Interpreter interpreter;
  late InterpreterOptions _interpreterOptions;
  var logger = Logger();

  late List<int> _inputShape;
  late List<int> _outputShape;

  late TensorImage _inputImage;
  late TensorBuffer _outputBuffer;

  late TfLiteType _inputType;
  late TfLiteType _outputType;

  final String _labelsFileName = 'assets/Labels.txt';

  // ignore: prefer_typing_uninitialized_variables
  late var _probabilityProcessor;

  late List<String> labels;

  String get modelName;

  NormalizeOp get preProcessNormalizeOp;
  NormalizeOp get postProcessNormalizeOp;

  Classifier({int? numThreads}) {
    _interpreterOptions = InterpreterOptions();

    if (numThreads != null) {
      _interpreterOptions.threads = numThreads;
    }

    loadModel();
    loadLabels();
  }

  Future<void> loadModel() async {
    try {
      interpreter =
          await Interpreter.fromAsset(modelName, options: _interpreterOptions);
      // ignore: avoid_print
      print('Interpreter Created Successfully');

      _inputShape = interpreter.getInputTensor(0).shape;
      _outputShape = interpreter.getOutputTensor(0).shape;
      _inputType = interpreter.getInputTensor(0).type;
      _outputType = interpreter.getOutputTensor(0).type;

      _outputBuffer = TensorBuffer.createFixedSize(_outputShape, _outputType);
      _probabilityProcessor =
          TensorProcessorBuilder().add(postProcessNormalizeOp).build();
    } catch (e) {
      // ignore: avoid_print
      print('Unable to create interpreter, Caught Exception: ${e.toString()}');
    }
  }

  Future<void> loadLabels() async {
    labels = await FileUtil.loadLabels(_labelsFileName);
    if (labels.isNotEmpty) {
      // ignore: avoid_print
      print('Labels loaded successfully');
    } else {
      // ignore: avoid_print
      print('Unable to load labels');
    }
  }

  TensorImage _preProcess() {
    int cropSize = min(_inputImage.height, _inputImage.width);
    return ImageProcessorBuilder()
        .add(ResizeWithCropOrPadOp(cropSize, cropSize))
        .add(ResizeOp(
            _inputShape[1], _inputShape[2], ResizeMethod.NEAREST_NEIGHBOUR))
        .add(preProcessNormalizeOp)
        .build()
        .process(_inputImage);
  }

  Category predict(imageFile) {
    final pres = DateTime.now().millisecondsSinceEpoch;
    _inputImage = TensorImage(_inputType);
    _inputImage.loadImage(imageFile);
    _inputImage = _preProcess();
    final pre = DateTime.now().millisecondsSinceEpoch - pres;

    // ignore: avoid_print
    print('Time to load image: $pre ms');

    final runs = DateTime.now().millisecondsSinceEpoch;
    interpreter.run(_inputImage.buffer, _outputBuffer.getBuffer());
    final run = DateTime.now().millisecondsSinceEpoch - runs;

    // ignore: avoid_print
    print('Time to run inference: $run ms');

    Map<String, double> labeledProb = TensorLabel.fromList(
            labels, _probabilityProcessor.process(_outputBuffer))
        .getMapWithFloatValue();
    final pred = getTopProbability(labeledProb);

    return Category(pred.key, pred.value);
  }

  Category predict0(imageFile) {
    final pres = DateTime.now().millisecondsSinceEpoch;
    _inputImage = TensorImage(_inputType);
    _inputImage.loadImage(imageFile);
    _inputImage = _preProcess();
    final pre = DateTime.now().millisecondsSinceEpoch - pres;

    // ignore: avoid_print
    print('Time to load image: $pre ms');

    final runs = DateTime.now().millisecondsSinceEpoch;
    interpreter.run(_inputImage.buffer, _outputBuffer.getBuffer());
    final run = DateTime.now().millisecondsSinceEpoch - runs;

    // ignore: avoid_print
    print('Time to run inference: $run ms');

    Map<String, double> labeledProb = TensorLabel.fromList(
            labels, _probabilityProcessor.process(_outputBuffer))
        .getMapWithFloatValue();
    List<String> keys = labeledProb.keys.toList();
    List<double> values = labeledProb.values.toList();

    return Category(keys[0], values[0]);
  }

  Category predict1(imageFile) {
    final pres = DateTime.now().millisecondsSinceEpoch;
    _inputImage = TensorImage(_inputType);
    _inputImage.loadImage(imageFile);
    _inputImage = _preProcess();
    final pre = DateTime.now().millisecondsSinceEpoch - pres;

    // ignore: avoid_print
    print('Time to load image: $pre ms');

    final runs = DateTime.now().millisecondsSinceEpoch;
    interpreter.run(_inputImage.buffer, _outputBuffer.getBuffer());
    final run = DateTime.now().millisecondsSinceEpoch - runs;

    // ignore: avoid_print
    print('Time to run inference: $run ms');

    Map<String, double> labeledProb = TensorLabel.fromList(
            labels, _probabilityProcessor.process(_outputBuffer))
        .getMapWithFloatValue();
    List<String> keys = labeledProb.keys.toList();
    List<double> values = labeledProb.values.toList();

    return Category(keys[1], values[1]);
  }

  Category predict2(imageFile) {
    final pres = DateTime.now().millisecondsSinceEpoch;
    _inputImage = TensorImage(_inputType);
    _inputImage.loadImage(imageFile);
    _inputImage = _preProcess();
    final pre = DateTime.now().millisecondsSinceEpoch - pres;

    // ignore: avoid_print
    print('Time to load image: $pre ms');

    final runs = DateTime.now().millisecondsSinceEpoch;
    interpreter.run(_inputImage.buffer, _outputBuffer.getBuffer());
    final run = DateTime.now().millisecondsSinceEpoch - runs;

    // ignore: avoid_print
    print('Time to run inference: $run ms');

    Map<String, double> labeledProb = TensorLabel.fromList(
            labels, _probabilityProcessor.process(_outputBuffer))
        .getMapWithFloatValue();
    List<String> keys = labeledProb.keys.toList();
    List<double> values = labeledProb.values.toList();

    return Category(keys[2], values[2]);
  }

  void close() {
    interpreter.close();
  }
}

MapEntry<String, double> getTopProbability(Map<String, double> labeledProb) {
  var pq = PriorityQueue<MapEntry<String, double>>(compare);
  pq.addAll(labeledProb.entries);

  return pq.first;
}

int compare(MapEntry<String, double> e1, MapEntry<String, double> e2) {
  if (e1.value > e2.value) {
    return -1;
  } else if (e1.value == e2.value) {
    return 0;
  } else {
    return 1;
  }
}
