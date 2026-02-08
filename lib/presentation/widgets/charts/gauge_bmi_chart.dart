import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:light_bmi_calculator/l10n/app_localizations.dart';
import 'dart:math' as math;

class GaugeBmiChart extends StatelessWidget {
  final double value;
  final String bmi;
  final Brightness brightness;
  const GaugeBmiChart(
      {super.key,
      required this.value,
      required this.bmi,
      required this.brightness});

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;

    // Angles for the buttons
    final List<double> angles = [180, 235, 283, 345];
    final List<double> values = [15.0, 22.0, 27.0, 35.0];

    return LayoutBuilder(builder: (context, constraints) {
      // Setup dimensions based on constraints
      final double width = constraints.maxWidth;
      // Use available height or fallback to width if unconstrained (square)
      final double height = (constraints.maxHeight != double.infinity)
          ? constraints.maxHeight
          : width;

      // SfRadialGauge usually calculates radius based on the smaller dimension
      final double limitingDimension = math.min(width, height);

      return SizedBox(
        height: height,
        width: width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SfRadialGauge(enableLoadingAnimation: false, axes: <RadialAxis>[
              RadialAxis(
                  minimum: 13,
                  maximum: 39,
                  startAngle: 160,
                  endAngle: 20,
                  radiusFactor:
                      1.2, // Reduced slightly to avoid clipping if any
                  axisLineStyle: AxisLineStyle(
                      color: colors.secondaryFixedDim,
                      thickness: 80,
                      thicknessUnit: GaugeSizeUnit.logicalPixel,
                      cornerStyle: CornerStyle.bothCurve),
                  showTicks: false,
                  showLabels: false,
                  centerY: 0.6,
                  ranges: <GaugeRange>[
                    GaugeRange(
                        startValue: 13,
                        endValue: 18.5,
                        labelStyle: const GaugeTextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        color: const Color.fromARGB(255, 133, 199, 252),
                        startWidth: 40,
                        endWidth: 40,
                        label: AppLocalizations.of(context)!.underweightLabel),
                    GaugeRange(
                        startValue: 18.5,
                        endValue: 24.9,
                        labelStyle: const GaugeTextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        color: const Color.fromARGB(255, 112, 209, 115),
                        startWidth: 40,
                        endWidth: 40,
                        label: AppLocalizations.of(context)!.normalLabel),
                    GaugeRange(
                        startValue: 24.9,
                        endValue: 29.9,
                        labelStyle: const GaugeTextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        color: const Color.fromARGB(255, 231, 145, 114),
                        startWidth: 40,
                        endWidth: 40,
                        label: AppLocalizations.of(context)!.overweightLabel),
                    GaugeRange(
                        startValue: 29.9,
                        endValue: 39,
                        labelStyle: const GaugeTextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        color: const Color.fromARGB(255, 246, 113, 113),
                        startWidth: 40,
                        endWidth: 40,
                        label: AppLocalizations.of(context)!.obeseLabel)
                  ],
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: value,
                      knobStyle: KnobStyle(
                          color: (brightness == Brightness.dark)
                              ? const Color.fromARGB(255, 208, 208, 208)
                              : const Color.fromARGB(255, 73, 73, 73)),
                      needleColor: (brightness == Brightness.dark)
                          ? const Color.fromARGB(255, 255, 255, 255)
                          : const Color.fromARGB(255, 123, 123, 123),
                      enableAnimation: true,
                    )
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        widget: Text(
                            "${AppLocalizations.of(context)!.bmiLabel} $bmi",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: (brightness == Brightness.dark)
                                    ? getDarkColorByValue()
                                    : getLightColorByValue())),
                        angle: 90,
                        positionFactor: 0.40),
                    _buildVisualIconAnnotation(
                        180, colors.onSecondaryFixedVariant),
                    _buildVisualIconAnnotation(
                        235, colors.onSecondaryFixedVariant),
                    _buildVisualIconAnnotation(
                        283, colors.onSecondaryFixedVariant),
                    _buildVisualIconAnnotation(
                        345, colors.onSecondaryFixedVariant),
                  ])
            ]),
            ...List.generate(angles.length, (index) {
              // Calculate radius based on the limiting dimension (min of width or height)
              // This matches SfRadialGauge's internal logic
              final double radius = (limitingDimension / 2) * 1.2;

              final double centerX = width / 2;
              // CenterY matches the centerY property of RadialAxis (0.6 of height)
              final double centerY = height * 0.6;

              final double positionFactor = 0.64;
              final double angleRad = angles[index] * (math.pi / 180);

              // Coordinates
              final double dx =
                  centerX + (radius * positionFactor * math.cos(angleRad));
              final double dy =
                  centerY + (radius * positionFactor * math.sin(angleRad));

              return Positioned(
                left: dx - 24, // 24 is half of 48 (icon button size)
                top: dy - 24,
                child: IconButton(
                  icon: const Icon(Icons.info_outline,
                      color: Colors.transparent), // Invisible icon, just hitbox
                  iconSize: 24,
                  constraints:
                      const BoxConstraints(minWidth: 48, minHeight: 48),
                  onPressed: () =>
                      showRangeInformation(context, value: values[index]),
                ),
              );
            }),
          ],
        ),
      );
    });
  }

  GaugeAnnotation _buildVisualIconAnnotation(double angle, Color color) {
    return GaugeAnnotation(
        horizontalAlignment: GaugeAlignment.center,
        verticalAlignment: GaugeAlignment.center,
        widget: Icon(Icons.info_outline, color: color),
        angle: angle,
        positionFactor: 0.64);
  }

  Color getDarkColorByValue() {
    if (value < 18.5) {
      return const Color.fromARGB(255, 107, 183, 241);
    } else if (value < 24.9) {
      return const Color.fromARGB(255, 30, 255, 37);
    } else if (value < 29.9) {
      return const Color.fromARGB(255, 255, 112, 60);
    } else {
      return const Color.fromARGB(255, 255, 32, 16);
    }
  }

  Color getLightColorByValue() {
    if (value < 18.5) {
      return const Color.fromARGB(255, 42, 141, 222);
    } else if (value < 24.9) {
      return const Color.fromARGB(255, 32, 164, 68);
    } else if (value < 29.9) {
      return const Color.fromARGB(255, 213, 130, 100);
    } else {
      return const Color.fromARGB(255, 244, 82, 82);
    }
  }

  void showRangeInformation(BuildContext context, {required double value}) {
    if (value < 18.5) {
      // Underweight
      String explanation =
          AppLocalizations.of(context)!.underweightBmiExplanation;
      // WHO Fact Sheet on Malnutrition (covers undernutrition/underweight)
      String link =
          "https://www.who.int/news-room/fact-sheets/detail/malnutrition";

      showInfoDialog(
        context,
        title: AppLocalizations.of(context)!.underweightLabel,
        content: explanation,
        link: link,
      );
    } else if (value < 24.9) {
      // Normal Weight
      String explanation = AppLocalizations.of(context)!.normalBmiExplanation;
      // CDC: Healthy Weight, Nutrition, and Physical Activity
      String link = "https://www.cdc.gov/healthyweight/index.html";

      showInfoDialog(
        context,
        title: AppLocalizations.of(context)!.normalLabel,
        content: explanation,
        link: link,
      );
    } else if (value < 29.9) {
      // Overweight
      String explanation =
          AppLocalizations.of(context)!.overweightBmiExplanation;
      // WHO Fact Sheet on Obesity and Overweight
      String link =
          "https://www.who.int/news-room/fact-sheets/detail/obesity-and-overweight";

      showInfoDialog(
        context,
        title: AppLocalizations.of(context)!.overweightLabel,
        content: explanation,
        link: link,
      );
    } else {
      // Obesity
      String explanation = AppLocalizations.of(context)!.obesityBmiExplanation;
      // CDC: Defining Adult Overweight & Obesity
      String link = "https://www.cdc.gov/obesity/php/about/index.html";

      showInfoDialog(
        context,
        title: AppLocalizations.of(context)!.obeseLabel,
        content: explanation,
        link: link,
      );
    }
  }

  void showInfoDialog(BuildContext context,
      {required String title, required String content, required String link}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(content),
                const SizedBox(height: 10),
                Text(AppLocalizations.of(context)!.sourcesHeading),
                GestureDetector(
                  onTap: () async {
                    final url = Uri.parse(link);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    }
                  },
                  child: Text(
                    link,
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(AppLocalizations.of(context)!.closeText),
            )
          ],
        );
      },
    );
  }
}
