import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GaugeBmiChart extends StatelessWidget {
  final double value;
  final String bmi;
  const GaugeBmiChart({super.key, required this.value, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(enableLoadingAnimation: true, axes: <RadialAxis>[
      RadialAxis(
          minimum: 13,
          maximum: 35,
          startAngle: 160,
          endAngle: 20,
          radiusFactor: 1.1,
          axisLineStyle: const AxisLineStyle(
              thickness: 100,
              thicknessUnit: GaugeSizeUnit.logicalPixel,
              cornerStyle: CornerStyle.bothFlat),
          showTicks: false,
          showLabels: false,
          centerY: 0.6,
          ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 18.5,
                labelStyle: const GaugeTextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold),
                color: Colors.blue,
                startWidth: 100,
                endWidth: 100,
                label: 'Underweight'),
            GaugeRange(
                startValue: 18.5,
                endValue: 24.9,
                labelStyle: const GaugeTextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold),
                color: const Color.fromARGB(255, 23, 179, 28),
                startWidth: 100,
                endWidth: 100,
                label: 'Normal'),
            GaugeRange(
                startValue: 24.9,
                endValue: 29.9,
                labelStyle: const GaugeTextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold),
                color: const Color.fromARGB(255, 200, 73, 27),
                startWidth: 100,
                endWidth: 100,
                label: 'Overweight'),
            GaugeRange(
                startValue: 29.9,
                endValue: 40,
                labelStyle: const GaugeTextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold),
                color: const Color.fromARGB(255, 183, 17, 5),
                startWidth: 100,
                endWidth: 100,
                label: 'Obese')
          ],
          pointers: <GaugePointer>[
            NeedlePointer(
              value: value,
              enableAnimation: true,
            )
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Text("BMI: $bmi",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: getColorByValue())),
                angle: 90,
                positionFactor: 0.65)
          ])
    ]);
  }

  Color getColorByValue() {
    if (value < 18.5) {
      return const Color.fromARGB(255, 80, 176, 255);
    } else if (value < 24.9) {
      return const Color.fromARGB(255, 30, 255, 37);
    } else if (value < 29.9) {
      return const Color.fromARGB(255, 255, 112, 60);
    } else {
      return const Color.fromARGB(255, 255, 32, 16);
    }
  }
}
