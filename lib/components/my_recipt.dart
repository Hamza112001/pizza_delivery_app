import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/model/resturants.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Center(
        child: Column(
          children: [
            const Text('Thank you for your order'),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<Resturants>(
                builder: (context, resturants, child) =>
                    Text(resturants.displayCartReceipt()),
              ),
            ),const SizedBox(height: 20,),
            const Text('Thanks for your order')
          ],
        ),
      ),
    );
  }
}
