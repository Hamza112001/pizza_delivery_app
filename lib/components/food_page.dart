import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/components/my_button.dart';
import 'package:pizza_delivery_app/model/food.dart';
import 'package:pizza_delivery_app/model/resturants.dart';
import 'package:provider/provider.dart';

class FoodDetailPage extends StatefulWidget {
  final Food food;
  final Map<AddOn, bool> selectedAddons = {};

  FoodDetailPage({
    super.key,
    required this.food,
  }) {
    for (AddOn addOn in food.addOn) {
      selectedAddons[addOn] = false;
    }
  }

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  
  // add to cart
  void addToCart(Food food, Map<AddOn, bool> selectedAddon) {
    List<AddOn> currentlySelectedAddon = [];
    for (AddOn addOn in widget.food.addOn) {
      if (widget.selectedAddons[addOn] == true) {
        currentlySelectedAddon.add(addOn);
      }
    }
    context.read<Resturants>().addToCart(food, currentlySelectedAddon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  Image.network(widget.food.imagePath),
            CircleAvatar(
              foregroundImage: NetworkImage(
                widget.food.imagePath,
              ),
              radius: 200,
            ),
            Text(
              widget.food.name,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '${widget.food.price}PKR',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              widget.food.description,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Addons',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary)),
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: widget.food.addOn.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  // addons name
                  AddOn addOn = widget.food.addOn[index];
                  return CheckboxListTile(
                    title: Text(addOn.name,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text('${addOn.price} PKR',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold)),
                    value: widget.selectedAddons[addOn],
                    onChanged: (bool? value) {
                      setState(() {
                        widget.selectedAddons[addOn] = value!;
                      });
                    },
                  );
                },
              ),
            ),
            // MyButton(
            //     onTap: () {
                 
            //     },
            //     text: 'Go Back'),
            const SizedBox(
              height: 10,
            ),
            MyButton(
                onTap: () {
                  addToCart(widget.food, widget.selectedAddons);
                   Navigator.pop(context);
                },
                text: 'Add To Cart')
          ],
        ),
      ),
    );
  }
}
