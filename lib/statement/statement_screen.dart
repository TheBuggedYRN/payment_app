import 'package:flutter/material.dart';
import 'package:payment_app/statement/statement_service.dart';

class StatementScreen extends StatelessWidget {
  const StatementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$StatementScreen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Download"),
          onPressed: () {
            final service = StatementService();
            service.download("99bdea42-8cdc-11ed-a1eb-0242ac120002");
          },
        ),
      ),
    );
  }
}
