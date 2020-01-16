import 'package:flutter/material.dart';

class ListHorizantal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_loc: 'images/Icons/Japan.png',
            image_cap: 'Japanese',
          ),
          Category(
            image_loc: 'images/Icons/Indian.jpg',
            image_cap: 'Indian',
          ),
          Category(
            image_loc: 'images/Icons/korean-food-png-1.png',
            image_cap: 'Korean',
          ),
          Category(
            image_loc: 'images/Icons/Chinese.png',
            image_cap: 'Chinese',
          ),
          Category(
            image_loc: 'images/Icons/Chinese.png',
            image_cap: 'Chinese',
          ),
          Category(
            image_loc: 'images/Icons/Chinese.png',
            image_cap: 'Chinese',
          ),
          Category(
            image_loc: 'images/Icons/Chinese.png',
            image_cap: 'Chinese',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_loc;
  final String image_cap;
  Category({
    this.image_loc,
    this.image_cap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_loc,
              width: 100,
              height: 50,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                image_cap,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
