import 'package:flutter/cupertino.dart';
import 'package:test_app/Controllers/calculate_controller.dart';
import 'package:test_app/Widgets/sub_result.dart';
import 'package:get/get.dart';
import 'line_separate.dart';
import 'main_result.dart';

class MathResults extends StatelessWidget {
  final calculatorCtrl = Get.find<CalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(text: '${calculatorCtrl.firstNumber}'),
            SubResult(text: '${calculatorCtrl.operation}'),
            SubResult(text: '${calculatorCtrl.secondNumber}'),
            LineSeparator(),
            MainResultText(text: '${calculatorCtrl.mathResult}'),
          ],
        ));
  }
}
