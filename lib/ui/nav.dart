import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFF010035),
        // borderRadius: const BorderRadius.only(
        //   // topLeft: Radius.circular(30),
        //   // topRight: Radius.circular(30),
        // ),
      ),
      child: Container(
        color: Color(0xFF010035),
        padding: EdgeInsets.symmetric(
            horizontal: (10 / 100) * MediaQuery.of(context).size.width),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 6,
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 8,
                ),
                Text(
                  'Explore',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
            Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
