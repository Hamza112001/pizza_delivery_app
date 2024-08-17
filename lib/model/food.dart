class Food {
  String description;
  String imagePath;
  String name;
  double price;
   List<AddOn> addOn;
  FoodCategory foodCategory;
 

  Food(
      {required this.description,
      required this.imagePath,
      required this.name,
      required this.price,
      required this.addOn,
      required this.foodCategory});
}

enum FoodCategory { burgers, salads, sides, desserts, drinks }

class AddOn {
  String name;
  double price;
  AddOn({required this.name, required this.price});
}
