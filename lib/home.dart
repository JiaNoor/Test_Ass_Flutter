import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var names = [
    "Men's FuelCell\n Echo",
    "Men's FuelCell\nRebel",
    "Side Bocks\n1200"
  ];

  var imgs = [
    'assets/images/shoe_1.jpg',
    'assets/images/shoe_2.jpg',
    'assets/images/shoe_3.jpg'
  ];

  var prices = ["\$99.99", "\$129.99", "\$139.99"];

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          backgroundColor: Colors.white60,
          shadowColor: Colors.white,
          bottomOpacity: 0,
          title: Container(
            height: 60.0,
            width: 160,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.jpeg'),
                    fit: BoxFit.fill)),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black87,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              header(),
              ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return options(names[index], imgs[index], prices[index]);
                  }),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 60.0,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.vertical()),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.orange,
                      ),
                      onPressed: () {},
                    ),
                    const Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.list,
                        color: Colors.orange,
                      ),
                      onPressed: () {},
                    ),
                    const Text(
                      "Catalog",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
                Column(children: [
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_bag,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                  const Text(
                    "Bag",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 8,
                    ),
                  ),
                ]),
                Column(children: [
                  IconButton(
                    icon: const Icon(
                      Icons.person,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 8,
                    ),
                  ),
                ]),
                Column(children: [
                  IconButton(
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                  const Text(
                    "More",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 8,
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      );
    });
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
              //overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                icon(),
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
    trailing: const CircleAvatar(
      backgroundColor: Colors.orangeAccent,
      radius: 20,
      child: Icon(Icons.add_shopping_cart),
    ),
  );
}

Widget header() {
  return const ListTile(
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
  return const Icon(
    Icons.star,
    color: Colors.black,
    size: 15,
  );
}
