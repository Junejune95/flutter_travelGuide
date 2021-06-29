import 'package:flutter/material.dart';
import 'package:travelGuidebyFlutter/pages/home/header_with_search.dart';
import 'package:travelGuidebyFlutter/pages/home/hotel_gridview_list.dart';
import 'package:travelGuidebyFlutter/pages/home/selecteable_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HearderWithSearch(),
            SelecteableList(),
            Container(
              height: MediaQuery.of(context).size.height*0.56 ,
              margin: EdgeInsets.all(20),
              child: HotelGridViewList(),
            )
          ],
        ),
      ),
    );
  }
}
