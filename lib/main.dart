import 'package:delivery/data/restaurant_data.dart';
import 'package:delivery/model/restaurant.dart';
import 'package:delivery/ui/_core/app_theme.dart';
import 'package:delivery/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  List<Restaurant> listRestaurant = await RestaurantData().getRestaurants();
  print(listRestaurant);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.appTheme, home: SplashScreen());
  }
}
