import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/components/my_recipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Align(
            alignment: Alignment.center,
            child: Text(
              'Delivery Progress Page',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold),
            )),
      ),
      body: const Column(
        children: [MyReceipt()],
      ),
    );
  }
}
