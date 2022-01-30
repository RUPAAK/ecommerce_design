import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF010035),
                        borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.backspace_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    'Product Details',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        letterSpacing: 1),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFF6E4E),
                        borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
