import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_bmi_calculator/config/styles/custom_text_styles.dart';
import 'package:simple_bmi_calculator/presentation/widgets/charts/gauge_bmi_chart.dart';
import 'package:simple_bmi_calculator/presentation/widgets/shared/copyright.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController heightFtController = TextEditingController();
  TextEditingController heightInController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  String bmi = "0.0";
  double calculatedBMI = 0.0;

  void calculateBMI() {
    if (heightFtController.text.isEmpty ||
        heightInController.text.isEmpty ||
        weightController.text.isEmpty) return;

    int heightFt = int.parse(heightFtController.text);
    int heightIn = int.parse(heightInController.text);
    int weight = int.parse(weightController.text);

    // Convert height to inches
    int totalHeightInches = (heightFt * 12) + heightIn;

    // BMI formula: (weight in pounds * 703) / (height in inches)²
    double calculatedBMI =
        (weight * 703) / (totalHeightInches * totalHeightInches);
    setState(() {
      this.calculatedBMI = calculatedBMI;
      bmi = calculatedBMI.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple BMI Calculator'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GaugeBmiChart(value: calculatedBMI, bmi: bmi),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Height: ', style: CustomTextStyles.bigTextLabel),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      controller: heightFtController,
                      onTap: () {
                        heightFtController.clear();
                      },
                      onChanged: (value) => calculateBMI(),
                      style: CustomTextStyles.bigTextField,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[1-9]')),
                        LengthLimitingTextInputFormatter(1),
                      ],
                    ),
                  ),
                  const Text('ft.', style: CustomTextStyles.bigTextLabel),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 60,
                    child: TextField(
                      controller: heightInController,
                      onTap: () {
                        heightInController.clear();
                      },
                      onChanged: (value) => calculateBMI(),
                      style: CustomTextStyles.bigTextField,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        LengthLimitingTextInputFormatter(2),
                      ],
                    ),
                  ),
                  const Text('in.', style: CustomTextStyles.bigTextLabel),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Weight: ', style: CustomTextStyles.bigTextLabel),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: weightController,
                      onTap: () {
                        weightController.clear();
                      },
                      onChanged: (svalue) => calculateBMI(),
                      style: CustomTextStyles.bigTextField,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        LengthLimitingTextInputFormatter(3),
                      ],
                    ),
                  ),
                  const Text('lbs.', style: CustomTextStyles.bigTextLabel),
                ],
              ),
              const SizedBox(height: 100),
              const SizedBox(width: 200, child: Copyright()),
            ],
          ),
        ),
      ),
    );
  }
}
