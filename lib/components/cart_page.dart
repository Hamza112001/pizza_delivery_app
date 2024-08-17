import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/components/my_button.dart';
import 'package:pizza_delivery_app/components/my_cart_tile.dart';
import 'package:pizza_delivery_app/model/resturants.dart';
import 'package:pizza_delivery_app/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturants>(
      builder: (context, resturants, child) {
        final userCart = resturants.cart;
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Are you Sure to clear cart ?'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Cancel')),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                resturants.clearCart();
                              },
                              child: const Text('Yes'))
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete))
            ],
            title: Align(
                alignment: Alignment.center,
                child: Text(
                  'Cart',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                )),
          ),
          body: Column(
            children: [
              // cart list column
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                            child: Center(
                                child: Text(
                            'Cart is empty',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary),
                          )))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  final cartItem = userCart[index];
                                  return MyCartTile(cartItem: cartItem);
                                }))
                  ],
                ),
              ),
              MyButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentPage(),
                        ));
                  },
                  text: 'Go To Chechout'),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }
}
