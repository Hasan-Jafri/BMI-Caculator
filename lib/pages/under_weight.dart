// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:bmi_calculator/utils/colors.dart';
import 'package:flutter/material.dart';

class UnderWeight extends StatelessWidget {
  const UnderWeight({super.key, required this.result});
  final result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Under Weight",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Center(
              child: SizedBox(
                width: 350,
                height: 350,
                child: Image.asset(
                  'assets/images/under_weight.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              "BMI: $result",
              style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  color: Colours.greydual),
            ),
          ],
        ),
      ),
    );
  }
}
