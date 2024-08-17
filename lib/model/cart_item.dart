import 'package:pizza_delivery_app/model/food.dart';

class CartItem {
  Food food;
  List<AddOn> selectedAddon;
  int quantity;
  CartItem(
      {required this.food,
       this.quantity=1,
      required this.selectedAddon});

      double get totalPrice {
        double addOnPrice=selectedAddon.fold(0, (sum, addon) => sum+addon.price);
        return (food.price+addOnPrice) *quantity;
      } 
}
