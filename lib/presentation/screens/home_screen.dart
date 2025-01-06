import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:light_bmi_calculator/config/styles/custom_decorations.dart';
import 'package:light_bmi_calculator/config/styles/custom_text_styles.dart';
import 'package:light_bmi_calculator/presentation/widgets/charts/gauge_bmi_chart.dart';
import 'package:light_bmi_calculator/presentation/widgets/custom_painters/appbar_painter.dart';
import 'package:light_bmi_calculator/presentation/widgets/shared/copyright.dart';
import 'package:light_bmi_calculator/presentation/widgets/shared/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController heightFtController = TextEditingController();
  TextEditingController heightInController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  FocusNode nullFocus = FocusNode();
  String bmi = "0.0";
  double calculatedBMI = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: CustomDecorations.bgDarkGradientDecoration,
        child: Theme(
          data: Theme.of(context).copyWith(
            dividerTheme: const DividerThemeData(
              color: Colors.transparent,
              thickness: 0,
            ),
          ),
          child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: CustomPaint(
                painter: AppBarPainter(),
                child: const CustomAppBar(),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: kToolbarHeight + 40),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: kToolbarHeight),
                  child: GestureDetector(
                    onTap: () => FocusScope.of(context).requestFocus(nullFocus),
                    child: Column(
                      children: [
                        GaugeBmiChart(value: calculatedBMI, bmi: bmi),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text('Height: ',
                                style: CustomTextStyles.bigTextLabel),
                            const SizedBox(
                              width: 10,
                            ),
                            getHeightFtTextField(),
                            const Text(' ft.',
                                style: CustomTextStyles.bigTextLabel),
                            const SizedBox(width: 20),
                            getHeightinTextField(),
                            const Text(' in.',
                                style: CustomTextStyles.bigTextLabel),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Weight: ',
                                style: CustomTextStyles.bigTextLabel),
                            weightTextField(),
                            const Text(' lbs.',
                                style: CustomTextStyles.bigTextLabel),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            persistentFooterButtons: const [Center(child: Copyright())],
          ),
        ));
  }

  SizedBox weightTextField() {
    return SizedBox(
      width: 100,
      child: TextField(
        controller: weightController,
        onTap: () {
          weightController.clear();
        },
        onChanged: (svalue) => calculateBMI(),
        style: CustomTextStyles.bigTextField,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          LengthLimitingTextInputFormatter(3),
        ],
      ),
    );
  }

  SizedBox getHeightinTextField() {
    return SizedBox(
      width: 60,
      child: TextField(
        controller: heightInController,
        onTap: () {
          heightInController.clear();
        },
        onChanged: (value) => calculateBMI(),
        style: CustomTextStyles.bigTextField,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          LengthLimitingTextInputFormatter(2),
        ],
      ),
    );
  }

  SizedBox getHeightFtTextField() {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: heightFtController,
        onTap: () {
          heightFtController.clear();
        },
        onChanged: (value) => calculateBMI(),
        style: CustomTextStyles.bigTextField,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[1-9]')),
          LengthLimitingTextInputFormatter(1),
        ],
      ),
    );
  }

  void validateHight() {
    if (heightInController.text.isEmpty) {
      return;
    }
    if (int.parse(heightInController.text) > 11) {
      heightInController.text = "11";
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Color.fromARGB(255, 172, 19, 8),
          content: Row(
            children: [
              Icon(Icons.error, color: Colors.white),
              SizedBox(width: 10),
              Text('Maximum height in feet is 11',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  void calculateBMI() {
    validateHight();

    if (heightFtController.text.isEmpty ||
        heightInController.text.isEmpty ||
        weightController.text.isEmpty) return;

    int heightFt = int.parse(heightFtController.text);
    int heightIn = int.parse(heightInController.text);
    int weight = int.parse(weightController.text);

    int totalHeightInches = (heightFt * 12) + heightIn;

    double calculatedBMI =
        (weight * 703) / (totalHeightInches * totalHeightInches);
    setState(() {
      this.calculatedBMI = calculatedBMI;
      bmi = calculatedBMI.toStringAsFixed(2);
    });
  }
}
