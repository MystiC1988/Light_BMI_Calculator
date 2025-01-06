import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:light_bmi_calculator/config/styles/custom_text_styles.dart';
import 'package:light_bmi_calculator/presentation/widgets/charts/gauge_bmi_chart.dart';
import 'package:light_bmi_calculator/presentation/widgets/shared/copyright.dart';

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

  void calculateBMI() {
    validateHight();

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
    return Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 2.0,
            colors: [
              Color(0xFF2A1446),
              Color(0xFF06162E),
            ],
          ),
        ),
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
                child: AppBar(
                  surfaceTintColor: Colors.transparent,
                  toolbarHeight: 120,
                  backgroundColor: Colors.transparent,
                  elevation: 4,
                  title: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon.png', width: 50),
                          const SizedBox(width: 10),
                          const Text(
                            'Light  BMI Calculator',
                            style: TextStyle(
                                fontFamily: "Akayatelivigala", fontSize: 30),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                ),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GaugeBmiChart(value: calculatedBMI, bmi: bmi),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text('Height: ',
                                style: CustomTextStyles.bigTextLabel),
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
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[1-9]')),
                                  LengthLimitingTextInputFormatter(1),
                                ],
                              ),
                            ),
                            const Text(' ft.',
                                style: CustomTextStyles.bigTextLabel),
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
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                  LengthLimitingTextInputFormatter(2),
                                ],
                              ),
                            ),
                            const Text(' in.',
                                style: CustomTextStyles.bigTextLabel),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text('Weight: ',
                                style: CustomTextStyles.bigTextLabel),
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
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                  LengthLimitingTextInputFormatter(3),
                                ],
                              ),
                            ),
                            const Text(' lbs.',
                                style: CustomTextStyles.bigTextLabel),
                          ],
                        ),
                        const SizedBox(height: 100)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            persistentFooterButtons: const [
              SizedBox(
                height: 10,
              ),
              Center(child: Copyright())
            ],
          ),
        ));
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
}

class AppBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 21, 14, 35)
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.5,
      size.width,
      size.height,
    );

    path.lineTo(size.width, 0);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
