import 'package:flutter/material.dart';
import 'package:myapp/data/restaurant_data.dart';
import 'package:myapp/ui/_core/app_theme.dart';
import 'package:myapp/ui/_core/bag_provider.dart';
import 'package:myapp/ui/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  RestaurantData restaurantData = RestaurantData();
  await restaurantData.getRestaurants();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => restaurantData),
        ChangeNotifierProvider(create: (context) => BagProvider()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.appTheme, home: SplashScreen());
  }
}
