import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travelGuidebyFlutter/data/hotel.dart';
import 'package:travelGuidebyFlutter/widgets/card_gradient.dart';

class HotelGridViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: hotels.length,
      itemBuilder: (BuildContext context, int index) =>
          _buildHotel(index, size, context),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 3),
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 18.0,
    );
  }

  Widget _favIcon(index) {
    return Positioned(
      right: 10,
      top: 12,
      child: Icon(
        Icons.favorite,
        color: hotels[index].isFav == true
            ? Colors.yellow[800]
            : Colors.white.withOpacity(0.7),
      ),
    );
  }

  Widget _buildHotel(int index, Size size, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(hotels[index].urlImage),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurple[100].withOpacity(0.7),
            offset: Offset(6, 2),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          _favIcon(index),
          CardGardient(),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    hotels[index].country,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 20,
                      ),
                      Text(
                        hotels[index].star.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
