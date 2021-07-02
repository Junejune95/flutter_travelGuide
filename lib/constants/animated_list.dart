import 'package:flutter/material.dart';

class BuildAnimatedList extends StatefulWidget {
  final int index;
  final Widget widget;

  const BuildAnimatedList({Key key, this.index, this.widget}) : super(key: key);

  @override
  _BuildAnimatedListState createState() => _BuildAnimatedListState();
}

class _BuildAnimatedListState extends State<BuildAnimatedList> {
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
      duration: Duration(milliseconds: 1000),
      curve: Curves.ease,
      opacity: _animate ? 1 : 0,
      child: widget.widget,
    );
  }
}
