import 'package:flutter/material.dart';

class Dropdown3 extends StatefulWidget {
  @override
  _Dropdown3State createState() => _Dropdown3State();
}

class _Dropdown3State extends State<Dropdown3> {
  int selected = null;
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'Anna University',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'josefinSans',
        ),
      ),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'M.S.University',
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
        'Oxford',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'josefinSans',
        ),
        overflow: TextOverflow.ellipsis,
      ),
      value: 3,
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
          'Anna University',
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
