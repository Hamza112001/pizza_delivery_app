import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:pizza_delivery_app/model/cart_item.dart';
import 'package:pizza_delivery_app/model/food.dart';

class Resturants extends ChangeNotifier {
  final List<Food> menu = [
    //burgers
    Food(
        description: 'A Classic Cheese Burger',
        imagePath:
            'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8QnVyZ2VyfGVufDB8fDB8fHww',
        name: 'Cheese Burger',
        price: 750.0,
        addOn: [
          AddOn(
            name: 'extra Cheese',
            price: 300,
          ),
          AddOn(
            name: 'Extra Patty',
            price: 200,
          ),
          AddOn(
            name: 'Salad',
            price: 100,
          ),
        ],
        foodCategory: FoodCategory.burgers),

    Food(
        description: 'A Classic Cheese Burger',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1683619761492-639240d29bb5?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: 'Double Cheese Burger',
        price: 650.0,
        addOn: [
          AddOn(
            name: 'extra Cheese',
            price: 300,
          ),
          AddOn(
            name: 'Extra Patty',
            price: 200,
          ),
          AddOn(
            name: 'Salad',
            price: 100,
          ),
        ],
        foodCategory: FoodCategory.burgers),
    Food(
        description: 'A Classic Zinger  Burger',
        imagePath:
            'https://images.unsplash.com/photo-1603197095324-7ecbc1a05689?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: 'Zinger Burger',
        price: 700.0,
        addOn: [
          AddOn(
            name: 'extra Cheese',
            price: 300,
          ),
          AddOn(
            name: 'Extra Patty',
            price: 200,
          ),
          AddOn(
            name: 'Salad',
            price: 100,
          ),
        ],
        foodCategory: FoodCategory.burgers),
    Food(
        description: 'A Classic Cheese Burger with a very great taste ',
        imagePath:
            'https://images.unsplash.com/photo-1549611016-3a70d82b5040?q=80&w=2030&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: 'Single Cheese Burger',
        price: 900.0,
        addOn: [
          AddOn(
            name: 'extra Cheese',
            price: 300,
          ),
          AddOn(
            name: 'Extra Patty',
            price: 200,
          ),
          AddOn(
            name: 'Salad',
            price: 100,
          ),
        ],
        foodCategory: FoodCategory.burgers),
    Food(
        description: 'A Classic Cheese Burger',
        imagePath:
            'https://images.unsplash.com/photo-1542574271-7f3b92e6c821?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: 'HamBurger with extra Cheese',
        price: 750.0,
        addOn: [
          AddOn(
            name: 'extra Cheese',
            price: 300,
          ),
          AddOn(
            name: 'Extra Patty',
            price: 200,
          ),
          AddOn(
            name: 'Salad',
            price: 100,
          ),
        ],
        foodCategory: FoodCategory.burgers),
    //salads
    Food(
        description: 'Tasty Salad with good health benifits',
        imagePath:
            'https://images.unsplash.com/photo-1599345570681-9d0f97335b8e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2FsYWRzfGVufDB8fDB8fHww',
        name: 'Russian Salad',
        price: 300,
        addOn: [AddOn(name: 'Sauce', price: 100)],
        foodCategory: FoodCategory.salads),
    Food(
        description: 'Tasty Salad with good health benifits',
        imagePath:
            'https://images.unsplash.com/photo-1623855244069-3594654e5e42?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2FsYWRzfGVufDB8fDB8fHww',
        name: 'Sliced Cucumbers and tomatos',
        price: 300,
        addOn: [AddOn(name: 'Sauce', price: 100)],
        foodCategory: FoodCategory.salads),
    Food(
        description: 'Tasty Salad with good health benifits',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1689596510201-f9829bfe4670?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c2FsYWRzfGVufDB8fDB8fHww',
        name: 'Sliced Fruits Salad',
        price: 500,
        addOn: [AddOn(name: 'Sauce', price: 100)],
        foodCategory: FoodCategory.salads),
    Food(
        description: 'Tasty Salad with good health benifits',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1664478279991-832059d65835?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZnJ1aXQlMjBzYWxhZHxlbnwwfHwwfHx8MA%3D%3D',
        name: 'Simple Salad',
        price: 200.0,
        addOn: [AddOn(name: 'Sauce', price: 100)],
        foodCategory: FoodCategory.salads),
    Food(
        description: 'Tasty Salad with good health benifits',
        imagePath:
            'https://images.unsplash.com/photo-1528316746172-63793f15de39?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZnJ1aXQlMjBzYWxhZHxlbnwwfHwwfHx8MA%3D%3D',
        name: 'Vegetab;es Salad',
        price: 400,
        addOn: [AddOn(name: 'Sauce', price: 100)],
        foodCategory: FoodCategory.salads),
    //sides
    Food(
        description: 'Tasty Cheese Fries',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1668031802460-89952ecb00f7?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: 'Cheese Fries',
        price: 500,
        addOn: [
          AddOn(name: 'Extra Cheese', price: 200),
          AddOn(name: 'Extra fries', price: 100),
        ],
        foodCategory: FoodCategory.sides),
    Food(
        description: 'Tasty Cheese Fries',
        imagePath:
            'https://images.unsplash.com/photo-1598679253544-2c97992403ea?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: 'Fries with white sauce ',
        price: 500,
        addOn: [
          AddOn(name: 'Extra Cheese', price: 200),
          AddOn(name: 'Extra fries', price: 100),
        ],
        foodCategory: FoodCategory.sides),
    Food(
        description: 'Tasty Cheese Fries',
        imagePath:
            'https://images.unsplash.com/photo-1680016791602-3a160533b0a8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHNpZGVzfGVufDB8fDB8fHww',
        name: ' Baked Bread',
        price: 500,
        addOn: [
          AddOn(name: 'Extra Cheese', price: 200),
          AddOn(name: 'Extra fries', price: 100),
        ],
        foodCategory: FoodCategory.sides),
    Food(
        description: 'Tasty Cheese Fries',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1664206140107-d3b85d2a8719?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGxhdHRlcnxlbnwwfHwwfHx8MA%3D%3D',
        name: ' Platter',
        price: 590,
        addOn: [
          AddOn(name: 'Extra Cheese', price: 200),
          AddOn(name: 'Extra fries', price: 100),
        ],
        foodCategory: FoodCategory.sides),
    Food(
        description: 'Tasty Cheese Fries',
        imagePath:
            'https://images.unsplash.com/photo-1598679253556-a72774bd9875?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c2lkZXN8ZW58MHx8MHx8fDA%3D',
        name: 'Peas And Breads',
        price: 500,
        addOn: [
          AddOn(name: 'Extra Peas', price: 200),
          AddOn(name: 'Extra Breads', price: 100),
        ],
        foodCategory: FoodCategory.sides),
    //drinks
    Food(
        description: 'Refereshing leamonade with multiple health benefits',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1664392090012-c0a7268964f4?q=80&w=1959&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: 'Leamonade ',
        price: 500,
        addOn: [AddOn(name: 'extra leamon', price: 50)],
        foodCategory: FoodCategory.drinks),
    Food(
        description: 'Refereshing Cocktail with multiple health benefits',
        imagePath:
            'https://images.unsplash.com/photo-1486947799489-3fabdd7d32a6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y29ja3RhaWx8ZW58MHx8MHx8fDA%3D',
        name: 'Cocktail ',
        price: 300,
        addOn: [AddOn(name: 'extra leamon', price: 50)],
        foodCategory: FoodCategory.drinks),
    Food(
        description: 'Refereshing leamonade with multiple health benefits',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1664551734441-6f4726ad0e9f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bGVhbW9uYWRlfGVufDB8fDB8fHww',
        name: 'Lemon water ',
        price: 500,
        addOn: [AddOn(name: 'extra leamon', price: 50)],
        foodCategory: FoodCategory.drinks),
    Food(
        description: ' Coffe with multiple health benefits',
        imagePath:
            'https://images.unsplash.com/photo-1558122104-355edad709f6?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: 'Coffe   ',
        price: 500,
        addOn: [AddOn(name: 'extra Choclate', price: 50)],
        foodCategory: FoodCategory.drinks),
    Food(
        description: 'Refereshing cold coffe with multiple health benefits',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1663933534064-ecf9b786c91a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29sZCUyMGNvZmZlfGVufDB8fDB8fHww',
        name: 'Cold Coffe  ',
        price: 590,
        addOn: [AddOn(name: 'extra Coffe', price: 50)],
        foodCategory: FoodCategory.drinks),
    //dessert
    Food(
        description: 'Tasty Ice Cream which will elevate your mood',
        imagePath:
            'https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: 'Ice Cream',
        price: 400,
        addOn: [
          AddOn(name: 'Extra Choclate', price: 100),
        ],
        foodCategory: FoodCategory.desserts),
    Food(
        description: 'Tasty Ice Cream which will elevate your mood',
        imagePath:
            'https://images.unsplash.com/photo-1499636136210-6f4ee915583e?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: ' Brownie',
        price: 300,
        addOn: [
          AddOn(name: 'Extra Choclate', price: 100),
        ],
        foodCategory: FoodCategory.desserts),
    Food(
        description: 'Tasty Donuts which will elevate your mood',
        imagePath:
            'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGRlc3NlcnR8ZW58MHx8MHx8fDA%3D',
        name: 'Donuts',
        price: 300,
        addOn: [
          AddOn(name: 'Extra Choclate', price: 100),
        ],
        foodCategory: FoodCategory.desserts),
    Food(
        description: 'Tasty Choclate cake which will elevate your mood',
        imagePath:
            'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGRlc3NlcnR8ZW58MHx8MHx8fDA%3D',
        name: 'Choclate Cake',
        price: 500,
        addOn: [
          AddOn(name: 'Extra Choclate', price: 100),
        ],
        foodCategory: FoodCategory.desserts),
    Food(
        description: 'Caramel Cake which will elevate your mood',
        imagePath:
            'https://images.unsplash.com/photo-1488474339733-16a5dd4ba5e6?q=80&w=2053&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: 'Caramel Cake',
        price: 450,
        addOn: [
          AddOn(name: 'Extra Choclate', price: 100),
        ],
        foodCategory: FoodCategory.desserts)
  ];

  //user cart
  final List<CartItem> _cart = [];

  List<CartItem> get cart => _cart;
  //add to cart
  void addToCart(Food food, List<AddOn> selectedAddon) {
    //see if there is a cart item with the same name and addons
    CartItem? cartItem = _cart.firstWhereOrNull(
      (item) {
        bool isSameFood = item.food == food;
        bool isSameAddons =
            const ListEquality().equals(item.selectedAddon, selectedAddon);
        return isSameFood && isSameAddons;
      },
    );
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddon: selectedAddon));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (AddOn addOn in cartItem.selectedAddon) {
        itemTotal += addOn.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  String _formatPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  String _formatAddon(List<AddOn> addons) {
    return addons
        .map(
          (addon) => '${addon.name}(${_formatPrice(addon.price)})',
        )
        .join();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln('Here is Your Receipt');
    receipt.writeln();

    String formatDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formatDate);
    receipt.writeln();
    receipt.writeln('-----------');
    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}');
      if (cartItem.selectedAddon.isNotEmpty) {
        receipt.writeln('Add_ons ${_formatAddon(cartItem.selectedAddon)}');
      }
      receipt.writeln();
    }
    receipt.writeln('---------');
    receipt.writeln();
    receipt.writeln('Total items : ${getTotalItemCount()}');
    receipt.writeln('Total Price : ${_formatPrice(getTotalPrice())}');
    return receipt.toString();
  }
}
