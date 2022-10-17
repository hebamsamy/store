import 'package:flutter/material.dart';
import 'package:store/HomeScreen.dart';
import 'package:store/ListScreen.dart';
import 'package:store/ProfileScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  int Current = 0;
  List<Widget> Screens = [HomeScreen(), ListScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Screens[Current],
      bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.purple,
          // unselectedItemColor: Colors.purple[100],
          // selectedItemColor: Colors.white,
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.purple[100],
          selectedItemColor: Colors.white,
          onTap: (value) {
            setState(() {
              Current = value;
            });
          },
          currentIndex: Current,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.purple,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.purple,
              icon: Icon(Icons.list),
              label: "Category",
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.purple,
                icon: Icon(
                  Icons.account_circle,
                ),
                label: "Profile")
          ]),
    );
  }
}
