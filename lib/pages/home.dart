import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 18,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(Icons.location_history, size: 15, color: const Color(0xffb74093),),
                  Text('Balaju, Nepal',
                      style: TextStyle(
                          color: Colors.black87, fontSize: 15)),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
