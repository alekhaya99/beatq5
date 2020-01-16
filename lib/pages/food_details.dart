import 'package:flutter/material.dart';

class FoodDetails extends StatefulWidget {
  final food_detail_name;
  final food_detail_pic;
  final food_detail_cost;

  FoodDetails({
    this.food_detail_cost,
    this.food_detail_name,
    this.food_detail_pic,
  });

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Look-2-Q'),
        backgroundColor: Colors.deepOrange[300],
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget
                    .food_detail_pic), //Need to give reference to the parent widget
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.food_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("${widget.food_detail_cost}"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Select the time"),
                          content: Text('Please Select the time'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('close'),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('ok'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Time"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.yellowAccent,
                  textColor: Colors.black,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Add to basket"),
                      ),
                      Expanded(
                        child: Icon(Icons.payment),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Buy Now"),
                ),
              ),

            ],
          ),
          Divider(),
          ListTile(
            title: Text("Food Details"),
            subtitle: Text(
                'Chicken curry is a dish originating from the Indian subcontinent. It is a common delicacy in the Indian subcontinent, Southeast Asia, Great Britain as well as in the Caribbean (where it is usually referred to as curry chicken). A typical curry from the Indian subcontinent consists of chicken stewed in an onion- and tomato-based sauce, flavoured with ginger, garlic, tomato puree, chilli peppers and a variety of spices, often including turmeric, cumin, coriander, cinnamon, cardamom and so on. Outside South Asia, chicken curry is often made with a pre-made spice mixture known as curry powder.'),
          ),
          Divider(),

        ],
      ),
    );
  }
}
