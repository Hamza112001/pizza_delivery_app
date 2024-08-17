import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/components/cart_page.dart';

class MySliverAppbar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppbar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        // cart icon
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartPage(),
                  ));
            },
            icon: const Icon(Icons.shopping_cart_outlined))
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text('Tasty Dinner'),
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        centerTitle: true,
        background: child,

        // const Padding(padding: EdgeInsets.only(bottom: 0.0)),
        title: title,
      ),
    );
  }
}
