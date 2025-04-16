import 'package:delivery/data/categories_data.dart';
import 'package:delivery/data/restaurant_data.dart';
import 'package:delivery/model/restaurant.dart';
import 'package:delivery/ui/_core/widgets/appbar.dart';
import 'package:delivery/ui/home/widgets/category_widget.dart';
import 'package:delivery/ui/home/widgets/restaurant_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:delivery/ui/_core/widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RestaurantData restaurantData = Provider.of<RestaurantData>(context);
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: getAppBar(context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 32.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/logo.png", width: 200)),
              Text("Boas Vindas!"),
              TextFormField(
                autocorrect: false,
                enableSuggestions: false,
                keyboardType: TextInputType.text,
                autofillHints: null,
                decoration: const InputDecoration(
                  icon: Icon(Icons.fastfood, color: Colors.grey),
                  hintText: 'Digite sua comida',
                  labelText: 'O que você vai comer hoje?',
                ),
              ),
              Text("Escolha por categoria"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8.0,
                  children: List.generate(
                    CategoriesData.listCategories.length,
                    (index) {
                      return CategoryWidget(
                        category: CategoriesData.listCategories[index],
                      );
                    },
                  ),
                ),
              ),
              Image.asset("assets/banners/banner_promo.png"),
              Text("Bem avaliados"),
              Column(
                spacing: 16.0,
                children: List.generate(restaurantData.listRestaurant.length, (
                  index,
                ) {
                  Restaurant restaurant = restaurantData.listRestaurant[index];
                  return RestaurantWidget(restaurant: restaurant);
                }),
              ),
              SizedBox(height: 64.0),
            ],
          ),
        ),
      ),
    );
  }
}
