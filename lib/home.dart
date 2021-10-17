import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Home extends StatelessWidget {
  var names = [
    "Men's FuelCell Echo",
    "Men's FuelCell Rebel",
    "Side Bocks 1200"
  ];
  var imgs = [
    'assets/images/shoe_1.jpg',
    'assets/images/shoe_2.jpg',
    'assets/images/shoe_3.jpg'
  ];
  var prices = ["\$99.99", "\$129.99", "\$139.99"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.white60,
        shadowColor: Colors.white,
        bottomOpacity: 0,
        title: Container(
          height: 60.0,
          width: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo.jpeg'),
                  fit: BoxFit.fill)),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black87,
          ),
        ],
      ),
      body: Column(
        children: [
          header(),
          options("Men's wear", 'assets/images/shoe_1.jpg', "\$9999")
        ],
      ),
    );
  }
}

Widget options(String model, String img, String price) {
  return ListTile(
    title: Row(
      children: [
        Container(
          height: 100.0,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill)),
        ),
        Column(
          children: [
            Text(
              model,
            ),
            Row(
              children: [
                icon(),
                icon(),
                icon(),
                icon(),
              ],
            ),
            Text(
              price,
              style: TextStyle(
                color: Colors.blueGrey[900],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
    trailing: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        radius: 20,
        child: Icon(Icons.add_shopping_cart),
      ),
    ),
  );
}

Widget header() {
  return ListTile(
    title: Text(
      "Running",
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    trailing: Text(
      "15 results",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 13,
      ),
    ),
  );
}

Widget icon() {
  return Icon(
    Icons.star,
    color: Colors.black,
    size: 20,
  );
}
