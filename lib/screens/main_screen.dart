import 'package:flutter/material.dart';
import 'package:travel_planner_app/screens/home_screen.dart';
import 'package:travel_planner_app/screens/trip_screen.dart';
import 'package:travel_planner_app/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(), //index 0
    TripScreen(), //index 1
    ProfileScreen(), //index2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), //index 0
              label: "Home",
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.map), //index 1
              label: "Trips"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person), //index 2
              label: "Profile"
          )
        ],
      ),

    );
  }
}
