import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text("History"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.grey.shade200,
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                border: OutlineInputBorder(),
                filled: true,
              ),
            ),
          ),

          Expanded(
            child: ListView(
              children: const [
                HistoryItem(
                  date: "Nov 7, 2025",
                  time: "04:55 pm",
                  bac: "10%",
                ),
                HistoryItem(
                  date: "Sep 8, 2025",
                  time: "06:05 pm",
                  bac: "6%",
                ),
                HistoryItem(
                  date: "Oct 1, 2025",
                  time: "10:50 am",
                  bac: "3%",
                ),
                HistoryItem(
                  date: "Jan 10, 2025",
                  time: "08:12 pm",
                  bac: "8%",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  final String date;
  final String time;
  final String bac;

  const HistoryItem({
    super.key,
    required this.date,
    required this.time,
    required this.bac,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.water_drop, color: Colors.red),
      title: Text(date),
      subtitle: Text(time),
      trailing: Text("BAC: $bac",
          style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    );
  }
}
