import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:travelGuidebyFlutter/pages/favourite/favourite_page.dart';
import 'package:travelGuidebyFlutter/pages/home/home_page.dart';
import 'package:travelGuidebyFlutter/pages/location/location_page.dart';
import 'package:travelGuidebyFlutter/pages/profile/profile_page.dart';
import 'package:travelGuidebyFlutter/pages/profile/staggered_trekking.dart';
import 'package:travelGuidebyFlutter/pages/profile/staggered_trekking_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  List<Widget> pages = [
    HomePage(),
    FavouritePage(),
    LocationPage(),
    StaggeredTrekkingAnimation()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _index,
        onItemSelected: (index) => setState(() {
          _index = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: _index == 0
                ? Icon(
                    Icons.home,
                  )
                : Icon(
                    Icons.home_outlined,
                  ),
            title: Text('Home'),
            activeColor: Colors.deepPurple,
            textAlign: TextAlign.center,
            inactiveColor: Colors.deepPurple[300],
          ),
          BottomNavyBarItem(
            icon: _index == 1
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_outline),
            title: Text('Favourite'),
            activeColor: Colors.deepPurple,
            textAlign: TextAlign.center,
            inactiveColor: Colors.deepPurple[300],
          ),
          BottomNavyBarItem(
            icon: _index == 2
                ? Icon(Icons.location_on)
                : Icon(Icons.location_on_outlined),
            title: Text(
              'Messages test for mes teset test test ',
            ),
            activeColor: Colors.deepPurple,
            textAlign: TextAlign.center,
            inactiveColor: Colors.deepPurple[300],
          ),
          BottomNavyBarItem(
            icon: _index == 3 ? Icon(Icons.person) : Icon(Icons.person_outline),
            title: Text('Profile'),
            activeColor: Colors.deepPurple,
            inactiveColor: Colors.deepPurple[300],
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
