import 'package:flutter/material.dart';
import 'package:travelGuidebyFlutter/data/restaurant.dart';
import 'package:travelGuidebyFlutter/pages/home/restaurant/restaurant_list_item.dart';

class RestaurantView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final restaurant in restaurants)
            RestaurantListItem(
              restaurant: restaurant,
            )
        ],
      ),
    );
  }
}
