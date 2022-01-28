// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_design/data/best_seller.dart';
import 'package:ecommerce_design/ui/nav.dart';
import 'package:ecommerce_design/pages/filter.dart';
import 'package:flutter/material.dart';

class SlideSheet extends StatefulWidget {
  const SlideSheet({Key? key}) : super(key: key);

  @override
  _SlideSheetState createState() => _SlideSheetState();
}

class _SlideSheetState extends State<SlideSheet> {
  void slideSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: 375,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF010035),
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                            icon: const Icon(
                              Icons.cancel_presentation,
                              color: Colors.white,
                            ),
                            onPressed: slideSheet,
                          ),
                        ),
                        Text(
                          'Filter options',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFF6E4E),
                          ),
                          onPressed: () {},
                          child: Text('Done'),
                        )
                      ],
                    )
                  ],
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: const Icon(Icons.filter_alt_outlined),
        onPressed: slideSheet,
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  int _currentIndex = 0;
  List<BestSeller> bestSellersData = [
    BestSeller(
        name: "Samsung Galaxy s20 Ultra",
        image: "assets/images/s_series.png",
        cost: "\$1,047"),
    BestSeller(
        name: "Xiaomi Mi 10 Pro", image: "assets/images/mi.png", cost: "\$300"),
    BestSeller(
        name: "Samsung Note 20 Ultra",
        image: "assets/images/note_series.png",
        cost: "\$1,000"),
    BestSeller(
        name: "Motorola One Edge", image: "assets/images/m.png", cost: "\$750"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: Center(
          child: ListView(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                            Positioned(child: const SlideSheet())
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
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
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
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                  height: 183,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/iphone.png'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.25), BlendMode.darken),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 27,
                        width: 27,
                        margin: EdgeInsets.only(bottom: 17),
                        alignment: Alignment.center,
                        // margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        decoration: BoxDecoration(
                            color: Color(0xFFFF6E4E),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1, color: Colors.black)),
                        child: Text(
                          'New',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      Text(
                        'IPhone 12',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Súper. Mega. Rápido.',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            width: 98,
                            height: 23,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF6E4E),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                child: Text(
                                  'Buy Now !',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Seller',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                  ),
                  Text(
                    'see more',
                    style: TextStyle(color: const Color(0xffb74093)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 17, 15),
              child: GridView.count(
                shrinkWrap: true,
                childAspectRatio: 0.9,
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: bestSellersData
                    .map(
                      (data) => Container(
                        clipBehavior: Clip.hardEdge,

                        // color: Colors.white,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        // height: 500,
                        child: Column(
                          children: [
                            Container(
                              // height: 300,
                              child: Image(
                                image: AssetImage(data.image),
                                fit: BoxFit.cover,
                                // height: 250,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  data.cost,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    data.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Navbar(),
        ));
  }
}
