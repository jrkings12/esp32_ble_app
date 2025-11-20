import 'package:flutter/material.dart';

class LiveBACScreen extends StatelessWidget {
  const LiveBACScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: const Text(
          "Live BAC",
          style: TextStyle(color: Colors.white),
        ),
      ),
      
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "Today",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          // BAC Circle Gauge
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 8),
              ),
              child: const Center(
                child: Text(
                  "10%",
                  style: TextStyle(fontSize: 28, color: Colors.red),
                ),
              ),
            ),
          ),

          const SizedBox(height: 40),

          // Stats Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              StatCircle(label: "TAC", value: "25%"),
              StatCircle(label: "Temperature", value: "50%"),
              StatCircle(label: "Humidity", value: "80%"),
            ],
          )
        ],
      ),
    );
  }
}

class StatCircle extends StatelessWidget {
  final String label;
  final String value;

  const StatCircle({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 3),
          ),
          child: Center(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
