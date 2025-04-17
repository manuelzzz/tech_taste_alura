import 'package:flutter/material.dart';
import 'package:myapp/model/restaurant.dart';
import 'package:myapp/ui/_core/bag_provider.dart';
import 'package:myapp/ui/_core/widgets/tech_taste_app_bar.dart';
import 'package:provider/provider.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantScreen({super.key, required this.restaurant});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    final restaurant = widget.restaurant;

    return Scaffold(
      appBar: TechTasteAppBar(title: restaurant.name),
      body: Column(
        spacing: 16,
        children: [
          Center(
            child: Image.asset('assets/${restaurant.imagePath}', width: 120),
          ),
          Text(
            "Mais pedidos!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            children: List.generate(restaurant.dishes.length, (index) {
              final dish = restaurant.dishes[index];

              return ListTile(
                leading: Image.asset(
                  'assets/dishes/default.png',
                  width: 48,
                  height: 48,
                ),
                title: Text(dish.name),
                subtitle: Text("R\$ ${dish.price.toStringAsFixed(2)}"),
                trailing: IconButton(
                  onPressed: () {
                    context.read<BagProvider>().addAllDishes([dish]);
                  },
                  icon: Icon(Icons.add),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
