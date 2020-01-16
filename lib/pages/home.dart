import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:beatq/com/horhome.dart';
import 'package:beatq/com/studentchoice.dart';
import 'package:beatq/pages/basket.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/Chicken-Curry-Rice-1.jpg'),
          AssetImage('images/img-010-01.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 1.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
      height: 100,
    );
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Basket(),
                ),
              );
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Alek'),
              accountEmail: Text('alekhaya.datta@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.deepOrange),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.assignment,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourite'),
                leading: Icon(Icons.stars, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Basket(),
                  ),
                );
              },
              child: ListTile(
                title: Text('Basket'),
                leading:
                Icon(Icons.shopping_basket, color: Colors.lightBlueAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          imageCarousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          ListHorizantal(),
          Container(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Student Choice'),
          ),
          Flexible(
            child: studentchoice(),
          ),
        ],
      ),
    );
  }
}
