import 'package:delivery/model/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('/assets/${restaurant.imagePath}'),
        Column(
          children: [
            Text(restaurant.name),
            Row(
              children: List.generate(restaurant.stars.toInt(), (index) {
                return Image.asset('assets/others/star.png', width: 16.0);
              }),
            ),
            Text('${restaurant.distance}km'),
          ],
        ),
      ],
    );
  }
}
