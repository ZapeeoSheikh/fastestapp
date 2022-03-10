import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  String _title;
  Icon _myicon;
  String _subtitle;
  MyListView(this._title, this._subtitle, this._myicon);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: _myicon,
        trailing: Icon(Icons.edit),
        title: Text(_title),
        subtitle: Text(_subtitle),
      ),
    );
  }
}
