import 'package:flutter/material.dart';

class SelecteableList extends StatefulWidget {
  @override
  _SelecteableListState createState() => _SelecteableListState();
}

class _SelecteableListState extends State<SelecteableList> {
  List<IconData> _icons = [
    Icons.hotel,
    Icons.flight,
    Icons.restaurant,
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:
          _icons.asMap().entries.map((e) => _buildIcon(e.key, size)).toList(),
    );
  }

  Widget _buildIcon(int index, Size size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: size.width * 0.18,
          decoration: BoxDecoration(
              color: index == _selectedIndex
                  ? Colors.yellow[900].withOpacity(0.2)
                  : Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)),
          height: size.height * 0.15 - 70,
          child: Icon(
            _icons[index],
            size: 24,
            color: index == _selectedIndex ? Colors.yellow[900] : Colors.grey,
          ),
        ),
      ),
    );
  }
}
