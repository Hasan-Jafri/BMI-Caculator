import 'package:bmi_calculator/pages/balanced_weight.dart';
import 'package:bmi_calculator/pages/over_weight.dart';
import 'package:bmi_calculator/pages/under_weight.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var wtcontroller = TextEditingController();
  var htcontroller = TextEditingController();
  var incontroller = TextEditingController();
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BMI',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                ),
                const SizedBox(
                  height: 21,
                ),
                TextField(
                  controller: wtcontroller,
                  decoration: const InputDecoration(
                      label: Text("Enter your weight (in kgs)"),
                      prefixIcon: Icon(Icons.line_weight)),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: htcontroller,
                  decoration: const InputDecoration(
                      label: Text("Enter your height(in fts)"),
                      prefixIcon: Icon(Icons.height)),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: incontroller,
                  decoration: const InputDecoration(
                      label: Text("Enter your heigh(in inches)"),
                      prefixIcon: Icon(Icons.height)),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      var ft = htcontroller.text.toString();
                      var wt = wtcontroller.text.toString();
                      var inch = incontroller.text.toString();

                      if (ft != '' && inch != '' && wt != '') {
                        int ift = int.parse(ft);
                        int iwt = int.parse(wt);
                        int inchi = int.parse(inch);
                        // Converting height to inches.
                        inchi = (ift * 12) + inchi;
                        // Converting to centimeters.
                        var cm = inchi * 2.54;
                        // Converting cm to meters.
                        var m = cm / 100;
                        // Now we find BMI.
                        var bmi = iwt / (m * m);
                        setState(() {
                          result = bmi.toStringAsFixed(2);
                        });
                        if (bmi > 25) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      OverWeight(result: result)));
                        } else if (bmi < 18) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      UnderWeight(result: result)));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BalancedWeight(result: result)));
                        }
                      } else {
                        setState(() {
                          result = 'Please Fill all the blanks!!!';
                        });
                      }
                    },
                    child: const Text(
                      "Calculate",
                      style: TextStyle(fontSize: 12),
                    )),
              ],
            ),
          ),
        ));
  }
}
