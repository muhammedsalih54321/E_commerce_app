import 'package:e_commerce_app/ui/screens/accountscreen.dart';
import 'package:e_commerce_app/ui/screens/cart.dart';
import 'package:e_commerce_app/ui/screens/catagories.dart';
import 'package:e_commerce_app/ui/screens/homescreen.dart';
import 'package:e_commerce_app/ui/screens/wishlist.dart';

import 'package:flutter/material.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  final screen = [
    Homescreen(),
    Wishlist(),
    Catagoriesscreen(),
    Accountscreen(),
    Cartscreen()
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.orange,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled,
                  color: currentindex == 0 ? Colors.orange : Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_outlined,
                  color: currentindex == 1 ? Colors.orange : Colors.black,
                ),
                label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined,
                    color: currentindex == 2 ? Colors.orange : Colors.black),
                label: 'Catogories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded,
                    color: currentindex == 3 ? Colors.orange : Colors.black),
                label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined,
                    color: currentindex == 4 ? Colors.orange : Colors.black),
                label: 'Cart'),
          ]),
      body: screen[currentindex],
    );
  }
}
