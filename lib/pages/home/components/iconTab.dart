import 'package:flutter/material.dart';

class IconTab extends StatefulWidget {
  final IconData icon;
  final Text text;
  final Function onTap;
  final Color selectedColor;
  final Color selectedIconColor;

  const IconTab({Key key,@required this.icon,@required this.text,@required this.onTap,@required this.selectedColor,@required this.selectedIconColor,}) : super(key: key);

  @override
  _IconTabState createState() => _IconTabState();
}

class _IconTabState extends State<IconTab> {

  @override
  Widget build(BuildContext context) {
      Size size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap:widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: size.width * 0.18,
          decoration: BoxDecoration(
              color: widget.selectedColor,
              borderRadius: BorderRadius.circular(10)),
          height: size.height * 0.15 - 70,
          child: Icon(
            widget.icon,
            size: 24,
            color: widget.selectedIconColor,
          ),
        ),
      ),
    );
  }
}

