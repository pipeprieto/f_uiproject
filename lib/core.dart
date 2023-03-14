import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ui/views/home_view.dart';
import 'package:myapp/ui/views/profile.dart';
import 'package:myapp/ui/views/search.dart';
import 'package:myapp/ui/widgets/bottombarnavigation.dart';

class Core extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Core();
  }
}

class _Core extends State<Core> {
  final List navigationItems = [HomeView(), Search(), Profile()];
  int indexTap = 0;

  void navigateTo(int index) {
    setState(() {
      this.indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: navigationItems[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white, primaryColor: Colors.blue.shade800),
          // child: BottomBarNavigation(),

          child: BottomNavigationBar(
            currentIndex: indexTap,
            onTap: this.navigateTo,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile")
            ],
          ),
        ));
  }
}
