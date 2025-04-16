import 'package:delivery/model/dish.dart';
import 'package:delivery/model/restaurant.dart';
import 'package:delivery/ui/_core/bag_provider.dart';
import 'package:delivery/ui/_core/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: restaurant.name),
      body: Center(
        child: Column(
          spacing: 12.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16.0),
            Image.asset('assets/${restaurant.imagePath}', width: 120),
            Text(
              "Mais Pedidos",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(restaurant.dishes.length, (index) {
                Dish dish = restaurant.dishes[index];
                return ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset(
                    'assets/dishes/burger.svg',
                    width: 48,
                    height: 48,
                    fit: BoxFit.contain,
                  ),
                  title: Text(dish.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("R\$ ${dish.price.toStringAsFixed(2)}"),
                      SizedBox(height: 8.0),
                    ],
                  ),
                  trailing: Row(
                    spacing: 8.0,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<BagProvider>().addAllDishes([dish]);
                        },
                        icon: Icon(Icons.add, color: Colors.green),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<BagProvider>().removeDishes(dish);
                        },
                        icon: Icon(Icons.remove, color: Colors.red),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
