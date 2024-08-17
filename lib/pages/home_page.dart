import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/services/auth/my_sliver_appbar.dart';
import 'package:pizza_delivery_app/components/food_page.dart';
import 'package:pizza_delivery_app/components/my_description_box.dart';
import 'package:pizza_delivery_app/components/my_drawer.dart';
import 'package:pizza_delivery_app/components/my_food_tile.dart';
import 'package:pizza_delivery_app/components/my_location.dart';
import 'package:pizza_delivery_app/components/my_tab_bar.dart';
import 'package:pizza_delivery_app/model/food.dart';
import 'package:pizza_delivery_app/model/resturants.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  // sort out food by category
  List<Food> _filterByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.foodCategory == category).toList();
  }

  //return list of food given in category
  List<Widget> getFoodCategory(List<Food> fullMenu) {
    return FoodCategory.values.map(
      (category) {
        List<Food> categoryMenu = _filterByCategory(category, fullMenu);
        return ListView.builder(
          itemCount: categoryMenu.length,
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            return MyFoodTile(
              food: food,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodDetailPage(food: food),
                    ));
              },
            );
          },
        );
      },
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppbar(
                  title: MyTabBar(controller: tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // my location
                      Padding(
                          padding: const EdgeInsets.only(bottom: 50.0),
                          child: Divider(
                              indent: 25.0,
                              endIndent: 25.0,
                              color: Theme.of(context).colorScheme.secondary)),
                      const MyCurrentLocation(),
                      const Padding(
                          padding: EdgeInsets.only(
                              bottom: 70.0, left: 30, right: 30),
                          child: MyDescriptionBox())
                    ],
                  ),
                ),
              ],
          body: Consumer<Resturants>(
            builder: (context, value, child) => TabBarView(
                controller: tabController,
                children: getFoodCategory(value.menu)),
          )),
    );
  }
}
