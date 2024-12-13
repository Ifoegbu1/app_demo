import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final historyRecords = ['A -> B', 'C -> D', 'E -> F', 'G -> H', 'I -> J'];

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: historyRecords.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.history),
            title: Text(historyRecords[index]),
          );
        },
      ),
    );
  }
}
