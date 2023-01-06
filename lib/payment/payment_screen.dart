import 'package:flutter/material.dart';
import 'package:payment_app/payment/payment_service.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$PaymentScreen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Pay"),
          onPressed: () {
            final service = PaymentService();
            service.checkout("55bdea43-6cdd-22ac-d1e3-0242ac120003");
          },
        ),
      ),
    );
  }
}
