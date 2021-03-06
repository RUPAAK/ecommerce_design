// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          spacing: 18,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(
                              Icons.location_history,
                              size: 15,
                              color: const Color(0xffb74093),
                            ),
                            Text('Balaju, Nepal',
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 15)),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Category',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(color: const Color(0xffb74093)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        // margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        decoration: BoxDecoration(
                            color: Color(0xFFFF6E4E),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1, color: Colors.black)),
                        child: Icon(
                          Icons.mobile_screen_share_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text(
                          "Phone",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        // margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        decoration: BoxDecoration(
                            color: Color(0xFFFF6E4E),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1, color: Colors.black)),
                        child: Icon(
                          Icons.computer_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text(
                          "Computer",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        // margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        decoration: BoxDecoration(
                            color: Color(0xFFFF6E4E),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1, color: Colors.black)),
                        child: Icon(
                          Icons.health_and_safety_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text(
                          "Health",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        // margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        decoration: BoxDecoration(
                            color: Color(0xFFFF6E4E),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1, color: Colors.black)),
                        child: Icon(
                          Icons.book_online,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text(
                          "Books",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        // flex: 5,
                        child: Container(
                      height: 42.0,
                      width: 3000,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Search...',
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.search_outlined,
                              color: Color(0xFFFF6E4E),
                            ),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                      flex: 0,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFFF6E4E),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.menu,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot sales',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                  ),
                  Text(
                    'see more',
                    style: TextStyle(color: const Color(0xffb74093)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.50),
                child: Image(
                  image: AssetImage('assets/images/iphone.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
