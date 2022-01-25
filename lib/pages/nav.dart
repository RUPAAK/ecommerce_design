import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: Color(0xFF010035),
        boxShadow: [
          BoxShadow(
            color: Colors.transparent,
            // changes position of shadow
          ),
        ],
      ),
      alignment: Alignment.center,
      child: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.red.withOpacity(0),
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.circle,
              color: Colors.white,
              size: 8,
            ),
            label: 'Explore',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: Colors.white,
              size: 18,
            ),
            label: '',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 18,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 18,
            ),
            label: '',
          ),
        ],
        selectedItemColor: Colors.white,
        // onTap:
      ),
    
    );
  }
}
