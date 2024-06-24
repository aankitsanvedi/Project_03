import 'package:dummy_project/UI/Screens/account_screen.dart';
import 'package:dummy_project/UI/Screens/cart_screen.dart';
import 'package:dummy_project/UI/Screens/home_screen.dart';
import 'package:dummy_project/UI/Screens/favourite_screen.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _currentIndex = 0;

  var _pageData = [HomeScreen(), FavouriteScreen(), CartScreen(), AccountScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   elevation: 0,
      //   backgroundColor: Colors.green,
      //   title: const Text(
      //     'Home',
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 30,
        //   type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Shopping',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
              backgroundColor: Colors.green),
        ],

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Center(
        child: _pageData[_currentIndex],
      ),
    );
  }
}
