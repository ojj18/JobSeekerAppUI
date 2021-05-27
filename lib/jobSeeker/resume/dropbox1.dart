import 'package:flutter/material.dart';

class Dropdown1 extends StatefulWidget {
  @override
  _Dropdown1State createState() => _Dropdown1State();
}

class _Dropdown1State extends State<Dropdown1> {
  int selected = null;
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'PhD',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'josefinSans',
        ),
      ),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'Graduation',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'josefinSans',
        ),
        overflow: TextOverflow.ellipsis,
      ),
      value: 2,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'PostGraduation',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'josefinSans',
        ),
        overflow: TextOverflow.ellipsis,
      ),
      value: 3,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
        '12th',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'josefinSans',
        ),
        overflow: TextOverflow.ellipsis,
      ),
      value: 4,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        // itemHeight: 2,
        iconSize: 25,
        elevation: 8,
        value: selected,
        hint: Text(
          'PhD',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'josefinSans',
          ),
          overflow: TextOverflow.ellipsis,
        ),
        items: listDrop,
        onChanged: (value) {
          selected = value;
          setState(() {});
        },
      ),
    );
  }
}
