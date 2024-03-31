import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'classifer.dart';

class ClassifierFloat extends Classifier {
  ClassifierFloat({int? numThreads})
      : super(
          numThreads: numThreads,
        );

  @override
  String get modelName => 'multi_input.tflite';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(
        224,
        224,
      );

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(
        0,
        1,
      );
}
