import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/components/quantity_selector.dart';
import 'package:pizza_delivery_app/model/cart_item.dart';
import 'package:pizza_delivery_app/model/resturants.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primary),
        child: Consumer<Resturants>(
          builder: (context, resturants, child) => Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.network(
                        cartItem.food.imagePath,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(cartItem.food.name),
                        Text(cartItem.food.price.toString()),
                        const SizedBox(height: 10,),
                    //      QuantitySelector(
                    //   food: cartItem.food,
                    //   quantity: cartItem.quantity,
                    //   onDecrement: () => resturants.removeFromCart(cartItem),
                    //   onIncrement: () => resturants.addToCart(
                    //       cartItem.food, cartItem.selectedAddon),
                    // )
                      ],
                    ),
                    const Spacer(
                      flex: 20,
                    ),
                   
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: cartItem.selectedAddon.isEmpty ? 0 : 60,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: cartItem.selectedAddon
                          .map(
                            (addon) => Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: FilterChip(
                                label: Row(
                                  children: [
                                    Text(addon.name),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    Text(addon.price.toString()),
                                  ],
                                ),
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                labelStyle: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    fontSize: 12),
                                onSelected: (value) {},
                              ),
                            ),
                          )
                          .toList()),
                ),QuantitySelector(
                      food: cartItem.food,
                      quantity: cartItem.quantity,
                      onDecrement: () => resturants.removeFromCart(cartItem),
                      onIncrement: () => resturants.addToCart(
                          cartItem.food, cartItem.selectedAddon),
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
