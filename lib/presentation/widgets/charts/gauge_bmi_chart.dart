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
          startAngle: 170,
          endAngle: 10,
          radiusFactor: 1,
          axisLineStyle: const AxisLineStyle(
              thickness: 0.2,
              thicknessUnit: GaugeSizeUnit.factor,
              cornerStyle: CornerStyle.bothCurve),
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
                startWidth: 80,
                endWidth: 80,
                label: 'Underweight'),
            GaugeRange(
                startValue: 18.5,
                endValue: 24.9,
                labelStyle: const GaugeTextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold),
                color: const Color.fromARGB(255, 23, 179, 28),
                startWidth: 80,
                endWidth: 80,
                label: 'Normal'),
            GaugeRange(
                startValue: 24.9,
                endValue: 29.9,
                labelStyle: const GaugeTextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold),
                color: const Color.fromARGB(255, 200, 73, 27),
                startWidth: 80,
                endWidth: 80,
                label: 'Overweight'),
            GaugeRange(
                startValue: 29.9,
                endValue: 40,
                labelStyle: const GaugeTextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold),
                color: const Color.fromARGB(255, 183, 17, 5),
                startWidth: 80,
                endWidth: 80,
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
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                angle: 90,
                positionFactor: 0.5)
          ])
    ]);
  }
}
