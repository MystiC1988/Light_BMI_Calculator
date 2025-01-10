import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:light_bmi_calculator/config/styles/custom_decorations.dart';
import 'package:light_bmi_calculator/config/styles/custom_text_styles.dart';
import 'package:light_bmi_calculator/presentation/blocs/theme_provider.dart';
import 'package:light_bmi_calculator/presentation/widgets/charts/gauge_bmi_chart.dart';
import 'package:light_bmi_calculator/presentation/widgets/painters/appbar_painter.dart';
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
  TextEditingController heightCmController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController weightKgController = TextEditingController();
  FocusNode nullFocus = FocusNode();
  String bmi = "0.0";
  double calculatedBMI = 0.0;
  List<bool> isUSUnits = [true, false];

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return BlocBuilder<ThemeProvider, ThemeData>(
        builder: (BuildContext context, state) {
      return Container(
        decoration: (state.brightness == Brightness.dark)
            ? CustomDecorations.bgDarkGradientDecoration
            : CustomDecorations.bgLightGradientDecoration,
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
                preferredSize: const Size.fromHeight(200),
                child: CustomPaint(
                  painter: AppBarPainter(brightness: state.brightness),
                  child: const CustomAppBar(),
                ),
              ),
              body: GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(nullFocus),
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: kToolbarHeight + 40),
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.only(top: kToolbarHeight),
                        child: Column(
                          children: [
                            GaugeBmiChart(
                                value: calculatedBMI,
                                bmi: bmi,
                                brightness: state.brightness),
                            (isUSUnits[0])
                                ? Row(
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
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Height: ',
                                          style: CustomTextStyles.bigTextLabel),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      getHeightCmTextField(),
                                      const Text(' cm.',
                                          style: CustomTextStyles.bigTextLabel),
                                    ],
                                  ),
                            const SizedBox(height: 20),
                            (isUSUnits[0])
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Weight: ',
                                          style: CustomTextStyles.bigTextLabel),
                                      weightTextField(),
                                      const Text(' lbs.',
                                          style: CustomTextStyles.bigTextLabel),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Weight: ',
                                          style: CustomTextStyles.bigTextLabel),
                                      getWeightKgTextField(),
                                      const Text(' kg.',
                                          style: CustomTextStyles.bigTextLabel),
                                    ],
                                  ),
                            const SizedBox(height: 30),
                            SegmentedButton<int>(
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                    if (states.contains(WidgetState.selected)) {
                                      return const Color.fromARGB(255, 63, 32,
                                          156); // Color for selected segment
                                    }
                                    return const Color.fromARGB(
                                        53, 22, 78, 118); // Default color
                                  },
                                ),
                                foregroundColor:
                                    WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                    if (states.contains(WidgetState.selected)) {
                                      return Colors.white;
                                    }
                                    return colorScheme
                                        .secondary; // Default color
                                  },
                                ),
                                overlayColor: WidgetStateProperty.all(
                                    const Color.fromARGB(255, 42, 26, 89)),
                                elevation: WidgetStateProperty.all(10),
                                side: WidgetStateProperty.all(const BorderSide(
                                    color: Color.fromARGB(78, 255, 253, 253),
                                    width: 1)),
                              ),
                              segments: const <ButtonSegment<int>>[
                                ButtonSegment<int>(
                                  value: 0,
                                  label: Text('U.S. Units'),
                                ),
                                ButtonSegment<int>(
                                  value: 1,
                                  label: Text('Metric Units'),
                                ),
                              ],
                              selected: <int>{isUSUnits[0] ? 0 : 1},
                              onSelectionChanged: (Set<int> newSelection) {
                                setState(() {
                                  resetAllvalues();
                                  isUSUnits = [
                                    newSelection.contains(0),
                                    newSelection.contains(1)
                                  ];
                                });
                              },
                            ),
                            const SizedBox(height: 30),
                            IconButton(
                                icon: (state.brightness == Brightness.dark)
                                    ? const Icon(Icons.dark_mode)
                                    : const Icon(Icons.light_mode),
                                iconSize: 50,
                                color: state.colorScheme.secondary,
                                onPressed: () => context
                                    .read<ThemeProvider>()
                                    .toggleTheme()),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              persistentFooterButtons: const [Center(child: Copyright())],
            )),
      );
    });
  }

  SizedBox weightTextField() {
    return SizedBox(
      width: 100,
      child: TextField(
        controller: weightController,
        onTap: () {
          weightController.clear();
        },
        textAlign: TextAlign.end,
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

  SizedBox getWeightKgTextField() {
    return SizedBox(
      width: 100,
      child: TextField(
        controller: weightKgController,
        onTap: () {
          weightKgController.clear();
        },
        textAlign: TextAlign.end,
        onChanged: (svalue) => calculateBMIMetric(),
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
        textAlign: TextAlign.end,
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

  SizedBox getHeightCmTextField() {
    return SizedBox(
      width: 100,
      child: TextField(
        controller: heightCmController,
        onTap: () {
          heightCmController.clear();
        },
        textAlign: TextAlign.end,
        onChanged: (value) => calculateBMIMetric(),
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

  SizedBox getHeightFtTextField() {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: heightFtController,
        onTap: () {
          heightFtController.clear();
        },
        textAlign: TextAlign.end,
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
              Text('Inches must be less than 12',
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

  void calculateBMIMetric() {
    if (heightCmController.text.isEmpty || weightKgController.text.isEmpty) {
      return;
    }

    double heightCm = double.parse(heightCmController.text);
    double weightKg = double.parse(weightKgController.text);

    double heightM = heightCm / 100;

    double calculatedBMI = weightKg / (heightM * heightM);
    setState(() {
      this.calculatedBMI = calculatedBMI;
      bmi = calculatedBMI.toStringAsFixed(2);
    });
  }

  void resetAllvalues() {
    heightFtController.clear();
    heightInController.clear();
    heightCmController.clear();
    weightController.clear();
    weightKgController.clear();
    setState(() {
      calculatedBMI = 0.0;
      bmi = "0.0";
    });
  }
}
