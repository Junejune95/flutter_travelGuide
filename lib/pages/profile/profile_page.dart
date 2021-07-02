import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1F0F4),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  topBar(200),
                  circle(
                    MediaQuery.of(context).size,
                    1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  Opacity(
                    opacity: 1,
                    child: placeholderBox(28, 80, Alignment.centerLeft),
                  ),
                  SizedBox(height: 6),
                  Opacity(
                    opacity: 1,
                    child: placeholderBox1(
                        10, double.infinity, Alignment.centerLeft),
                  ),
                  SizedBox(height: 6),
                  Opacity(
                    opacity: 1,
                    child: placeholderBox2(Alignment.center),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget placeholderBox2(Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
          height: 70.0,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            _buildImage('assets/images/hotel0.jpeg'),
            _buildImage('assets/images/hotel2.jpeg'),
            _buildImage('assets/images/hotel3.jpeg')
          ])),
    );
  }

  _buildImage(String imgPath) {
    return Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Container(
            height: 50.0,
            width: 115.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover))));
  }

  Container topBar(double height) {
    return Container(
      height: height,
      width: double.infinity,
      //color: Colors.blue,
      child: Image.asset(
        "assets/images/hotel0.jpeg",
        fit: BoxFit.cover,
      ),
    );
  }

  Positioned circle(Size size, double animationValue) {
    return Positioned(
      top: 100,
      left: size.width / 2 - 50,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
          animationValue,
          animationValue,
          1.0,
        ),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.shade300,
            image:
                DecorationImage(image: AssetImage("assets/images/avtar.jpeg")),
          ),
        ),
      ),
    );
  }

  Align placeholderBox(double height, double width, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
        height: height,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFD5EBEC),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text("Trekking Mountain Instruction"),
        ),
      ),
    );
  }

  Align placeholderBox1(double height, double width, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
        height: 490,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFC7E4E9),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  "1. Start walking now (it’s never too early to start training)."),
              SizedBox(
                height: 10,
              ),
              Text("2. Make leg-based cardio part of your routine…"),
              SizedBox(
                height: 10,
              ),
              Text("3. …and take the stairs every chance you get"),
              SizedBox(
                height: 10,
              ),
              Text("4. Make sure you’re walking properly"),
              SizedBox(
                height: 10,
              ),
              Text("5. Mix up your training terrain…"),
              SizedBox(
                height: 10,
              ),
              Text("6. …and walk in all types of weather"),
              SizedBox(
                height: 10,
              ),
              Text("7. Try using walking poles"),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 100,
                  width: width,
                  child: Image.asset(
                    "assets/poles.jpg",
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 10,
              ),
              Text("8. Train with a backpack"),
              SizedBox(
                height: 10,
              ),
              Text("9. Keep the tank fuelled"),
              SizedBox(
                height: 10,
              ),
              Text("10. Invest in a good pair of shoes"),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 100,
                  width: width,
                  child: Image.asset(
                    "assets/camp.jpg",
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
