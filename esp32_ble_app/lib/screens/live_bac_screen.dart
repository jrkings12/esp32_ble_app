import 'package:flutter/material.dart';
import 'dart:math';

class LiveBACScreen extends StatefulWidget {
  const LiveBACScreen({super.key});

  @override
  State<LiveBACScreen> createState() => _LiveBACScreenState();
}

class _LiveBACScreenState extends State<LiveBACScreen> {
  double bac = 0.10;       // Replace with actual ESP32 data
  double tac = 0.005;
  double temp = 0.15;
  double humidity = 0.25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: const Text("Live BAC", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
        iconTheme: const IconThemeData(color: Colors.white),

      ),

      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "Today",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          // Main BAC Gauge
          AnimatedPercentageCircle(
            percent: bac,
            size: 220,
            color: Colors.red,
            label: "${(bac * 100).toStringAsFixed(1)}%",
          ),

          const SizedBox(height: 40),

          // Mini Gauges
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedPercentageCircle(
                percent: tac,
                size: 90,
                color: Colors.blue,
                label: "${(tac * 100).toStringAsFixed(1)}%",
                subtitle: "TAC",
              ),
              AnimatedPercentageCircle(
                percent: temp,
                size: 90,
                color: Colors.orange,
                label: "${(temp * 100).toStringAsFixed(1)}%",
                subtitle: "Temp",
              ),
              AnimatedPercentageCircle(
                percent: humidity,
                size: 90,
                color: Colors.green,
                label: "${(humidity * 100).toStringAsFixed(1)}%",
                subtitle: "Humidity",
              ),
            ],
          )
        ],
      ),
    );
  }
}


// ----------------------------
// Animated Circular Gauge
// ----------------------------

class AnimatedPercentageCircle extends StatelessWidget {
  final double percent;
  final double size;
  final Color color;
  final String label;
  final String? subtitle;

  const AnimatedPercentageCircle({
    super.key,
    required this.percent,
    required this.size,
    required this.color,
    required this.label,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: percent),
          duration: const Duration(seconds: 1),
          builder: (context, value, child) {
            return SizedBox(
              width: size,
              height: size,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: size,
                    height: size,
                    child: CircularProgressIndicator(
                      value: value,
                      strokeWidth: size * 0.08,
                      color: color,
                      backgroundColor: Colors.grey.shade300,
                    ),
                  ),
                  Text(label, style: TextStyle(fontSize: size * 0.18)),
                ],
              ),
            );
          },
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 6),
          Text(subtitle!, style: const TextStyle(fontWeight: FontWeight.bold)),
        ]
      ],
    );
  }
}
