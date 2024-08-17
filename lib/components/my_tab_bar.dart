import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/model/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController controller;
  const MyTabBar({super.key, required this.controller});
  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map(
      (category) {
        return Tab(
          text: category.toString().split('.').last,
        );
      },
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        tabs: _buildCategoryTabs(),
        controller: controller,
      ),
    );
  }
}
