import 'package:flutter/material.dart';
import 'package:myapp/data/category_data.dart';
import 'package:myapp/data/restaurant_data.dart';
import 'package:myapp/ui/_core/widgets/tech_taste_app_bar.dart';
import 'package:myapp/ui/home/widgets/category_widget.dart';
import 'package:myapp/ui/home/widgets/restaurant_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final restaurantData = Provider.of<RestaurantData>(context);
    final categoriesData = Provider.of<CategoryData>(context);

    return Scaffold(
      drawer: Drawer(),
      appBar: TechTasteAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 32,
            children: [
              Center(child: Image.asset('assets/logo.png', width: 147)),
              Text(
                "Boas-vindas!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              TextFormField(),
              Text("Escolha por categoria"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: List.generate(
                    categoriesData.listCategory.length,
                    (index) => CategoryWidget(
                      category: categoriesData.listCategory[index],
                    ),
                  ),
                ),
              ),
              Center(child: Image.asset('assets/banners/banner_promo.png')),
              Text("Bem avaliados"),
              Column(
                spacing: 16,
                children: List.generate(
                  restaurantData.listRestaurant.length,
                  (index) => RestaurantWidget(
                    restaurant: restaurantData.listRestaurant[index],
                  ),
                ),
              ),
              SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
