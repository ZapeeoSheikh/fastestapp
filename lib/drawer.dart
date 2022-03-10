import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listview.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            accountEmail: Text(
              "muhammadrmz871@gmail.com",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            accountName: Text(
              "Muhammad Rameez ",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/280x280_RS/88/27/66/8827660383291eb9580892523c16d8f6.jpg"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                child: Text("MR"),
              )
            ],
          ),
          MyListView("Android", "Oreo 2.0", Icon(Icons.android)),
          MyListView(
              "Account 1 ", "Personal", Icon(CupertinoIcons.profile_circled)),
          MyListView("Chat", "+92 3234879062", Icon(Icons.phone)),
          MyListView("Message", "Call only", Icon(Icons.chat)),
        ],
      ),
      backgroundColor: Colors.blue,
    );
  }
}
