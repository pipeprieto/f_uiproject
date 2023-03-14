import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/ui/views/home_view.dart';
import 'package:myapp/ui/views/profile.dart';
import 'package:myapp/ui/views/search.dart';

class BottomBarNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
            Icons.home,
            color: Colors.blue.shade800,
          ),label: ""),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.search,
            color: Colors.blue.shade800,
          ),label: ""),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.person,
            color: Colors.blue.shade800,
          ),label: ""),
        ],
        
      ),tabBuilder: (BuildContext context, int index){
        switch(index){
          case 0:
          return CupertinoTabView(builder: (BuildContext context) => HomeView());
          break;

          case 1:
          return CupertinoTabView(
                  builder: (BuildContext context) => Search());
          break;

          case 2:
          return CupertinoTabView(
                  builder: (BuildContext context) => Profile());
          break;

          default:
          return CupertinoTabView(
                  builder: (BuildContext context) => HomeView());
          break;
        }
      },),
    );
  }
}
