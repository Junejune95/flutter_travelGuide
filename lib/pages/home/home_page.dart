import 'package:flutter/material.dart';
import 'package:travelGuidebyFlutter/constants/animated_list.dart';
import 'package:travelGuidebyFlutter/pages/home/components/header_with_search.dart';
import 'package:travelGuidebyFlutter/pages/home/hotel/hotel_gridview_list.dart';
import 'package:travelGuidebyFlutter/pages/home/components/iconTab.dart';
import 'package:travelGuidebyFlutter/pages/home/restaurant/restaurant_view.dart';
import 'package:travelGuidebyFlutter/pages/home/transportation/transportation_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> _icons = [
    Icons.hotel,
    Icons.flight,
    Icons.restaurant,
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildAnimatedList(
              index: 2,
              widget: HearderWithSearch(),
            ),
            BuildAnimatedList(
              index: 4,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (e) => IconTab(
                        icon: _icons[e.key],
                        text: null,
                        onTap: () {
                          setState(() {
                            _selectedIndex = e.key;
                          });
                        },
                        selectedColor: e.key == _selectedIndex
                            ? Colors.yellow[900].withOpacity(0.2)
                            : Colors.grey.withOpacity(0.2),
                        selectedIconColor: e.key == _selectedIndex
                            ? Colors.yellow[900]
                            : Colors.grey,
                      ),
                    )
                    .toList(),
              ),
            ),
            BuildAnimatedList(
              index: 6,
              widget: Container(
                height: MediaQuery.of(context).size.height * 0.56,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: checkList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget checkList() {
    switch (_selectedIndex) {
      case 0:
        {
          return HotelGridViewList();
        }
        break;

      case 1:
        {
          return TransportationView();
        }
        break;
      case 2:
        {
          return RestaurantView();
        }
        break;

      default:
        {
          return Text('Nothing to do');
        }
        break;
    }
  }
}
