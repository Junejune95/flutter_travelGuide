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
            AnimatedList(
              index: 1,
              widget: HearderWithSearch(),
            ),
            AnimatedList(
              index: 2,
              widget: SelecteableList(),
            ),
            AnimatedList(
              index: 3,
              widget: Container(
                height: MediaQuery.of(context).size.height * 0.56,
                margin: EdgeInsets.all(16),
                child: HotelGridViewList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedList extends StatefulWidget {
  final int index;
  final Widget widget;

  const AnimatedList({Key key, this.index, this.widget}) : super(key: key);

  @override
  _AnimatedListState createState() => _AnimatedListState();
}

class _AnimatedListState extends State<AnimatedList> {
  bool _animate = false;

  static bool _isStart = true;

  @override
  void initState() {
    _isStart = true;
    super.initState();
    _isStart
        ? Future.delayed(Duration(milliseconds: widget.index * 150), () {
            setState(() {
              _animate = true;
              _isStart = false;
            });
          })
        : _animate = true;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 800),
      curve: Curves.ease,
      opacity: _animate ? 1 : 0,
      child: AnimatedPadding(
        duration: Duration(milliseconds: 800),
        padding:
            _animate ? const EdgeInsets.all(0.0) : const EdgeInsets.all(20),
        child: widget.widget,
      ),
    );
  }
}
