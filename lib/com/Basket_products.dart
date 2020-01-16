import 'package:flutter/material.dart';

class BasketProducts extends StatefulWidget {
  @override
  _BasketProductsState createState() => _BasketProductsState();
}

class _BasketProductsState extends State<BasketProducts> {
  var Food_on_Tray = [
    {
      "name": "Curry Chicken Rice",
      "picture": "images/Students/coconut-chicken-curry-1-10.jpg",
      "cost": 5.50,
      "quantity": 5,
    },
    {
      "name": "Onion Chicken Rice",
      "picture": "images/Icons/Onion_CR.jpg",
      "cost": 5.50,
      "quantity": 5,
    },
    {
      "name": "yellow",
      "picture": "images/Students/coconut-chicken-curry-1-10.jpg",
      "cost": 5.50,
      "quantity": 5,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Food_on_Tray.length,
      itemBuilder: (context, index) {
        return Food_Tray(
          basket_food_name: Food_on_Tray[index]["name"],
          basket_food_picture: Food_on_Tray[index]["picture"],
          basket_food_price: Food_on_Tray[index]["cost"],
          basket_food_quantity: Food_on_Tray[index]["quantity"],
        );
      },
    );
  }
}

class Food_Tray extends StatelessWidget {
  final basket_food_name;
  final basket_food_picture;
  final basket_food_price;
  final basket_food_quantity;

  Food_Tray({
    this.basket_food_name,
    this.basket_food_picture,
    this.basket_food_price,
    this.basket_food_quantity,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //LEADING

        leading: Image.asset('images/Students/coconut-chicken-curry-1-10.jpg', height: 100,width: 100,),

        //THIS IS TITLE

        title: Text(basket_food_name),

        // THIS IS COST

        subtitle: Column(
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Cost'),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text("\(SGD)${basket_food_price}"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}
