import 'package:flutter/material.dart';

class Dropdown2 extends StatefulWidget {
  @override
  _Dropdown2State createState() => _Dropdown2State();
}

class _Dropdown2State extends State<Dropdown2> {
  int selected = null;
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'MBA',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'josefinSans',
        ),
      ),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'MCA',
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
        'CA',
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
        'M.Pharm',
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
          'MBA',
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
