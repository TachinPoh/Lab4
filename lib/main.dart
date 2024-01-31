import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("6488064")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              key: ValueKey(1),
              name: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: 1000,
              image: "assets/appimages/ip.png",
              isNetworkImage: false),
          ProductBox(
              key: ValueKey(2),
              name: "Pixel",
              description: "Pixel is the most featureful phone ever",
              price: 800,
              image: "https://techstory.in/wp-content/uploads/2021/05/E1w_CWtVIAAldKc-1024x1024.jpg",
              isNetworkImage: true),
          ProductBox(
              key: ValueKey(3),
              name: "Laptop",
              description: "Laptop is most productive development tool",
              price: 2000,
              image: "assets/appimages/lp.png",
              isNetworkImage: false),
          ProductBox(
              key: ValueKey(4),
              name: "Tablet",
              description: "Tablet is the most useful device ever for meeting",
              price: 1500,
              image: "assets/appimages/tb.png",
              isNetworkImage: false),
          ProductBox(
              key: ValueKey(5),
              name: "Pendrive",
              description: "Pendrive is a useful storage medium",
              price: 100,
              image: "https://i0.wp.com/www.deltastore.in/wp-content/uploads/2020/08/61tHDpsfGUL._SL1200_.jpg?fit=1200%2C1200&ssl=1",
              isNetworkImage: true),
          ProductBox(
              key: ValueKey(6),
              name: "Floppy Drive",
              description: "Floppy drive is a useful rescue storage medium",
              price: 20,
              image: "https://th.bing.com/th/id/R.52f7219984fdf56dc288fbab81840a7f?rik=vgi8IFRNzdayiQ&pid=ImgRaw&r=0",
              isNetworkImage: true),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.isNetworkImage,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            isNetworkImage
                ? Image.network(image, width: 80, height: 80)
                : Image.asset(image, width: 80, height: 80),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
