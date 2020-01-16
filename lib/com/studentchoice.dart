import 'package:flutter/material.dart';
import 'package:beatq/pages/food_details.dart';

class studentchoice extends StatefulWidget {
  @override
  _studentchoiceState createState() => _studentchoiceState();
}

class _studentchoiceState extends State<studentchoice> {
  var food_list = [
    {
      "name": "Curry Chicken Rice",
      "picture": "images/Students/coconut-chicken-curry-1-10.jpg",
      "cost": 5.50,
    },
    {
      "name": "Onion Chicken Rice",
      "picture": "images/Icons/Onion_CR.jpg",
      "cost": 5.50,
    },
    {
      "name": "yellow",
      "picture": "images/Students/coconut-chicken-curry-1-10.jpg",
      "cost": 5.50,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: food_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(1),
          child: food(
            food_name: food_list[index]['name'],
            food_pic: food_list[index]['picture'],
            food_price: food_list[index]['cost'],
          ),
        );
      },
    );
  }
}

class food extends StatelessWidget {
  final food_name;
  final food_pic;
  final food_price;
  food({
    this.food_name,
    this.food_pic,
    this.food_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: food_name,
        child: Material(
          child: InkWell(
            //in order to go to the next page
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FoodDetails(
                  food_detail_name: food_name,
                  food_detail_cost: food_price,
                  food_detail_pic: food_pic,
                ),
              ),
            ),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      food_name,
                      style: TextStyle(
                           fontSize: 12.0),
                    ),
                    title: Text(
                      "$food_price",
                      style: TextStyle(
                          fontSize: 12.0,

                          color: Colors.red),
                    ),
                  ),
                ),
                child: Image.asset(
                  food_pic,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
