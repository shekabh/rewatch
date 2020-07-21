import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:rewatch/pages/watch.dart';
import 'package:rewatch/widgets/Recommended.dart';
import 'package:rewatch/widgets/Sushant.dart';
import 'package:rewatch/widgets/Top_weekly.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 150.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/chhichhore.jpg'),
          AssetImage('assets/dreamgirl.jpg'),
          AssetImage('assets/war.jpg')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('REWATCH'),
        backgroundColor: Colors.grey[900],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            image_carousel,
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Image(
                image: AssetImage('assets/sushant.jpg'),
                height: 50,
                width: 500,
              ),

            ),
            Container(
                  height: 150,
                  child: ListView(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SushantS(),
                          SushantS(),
                          SushantS()
                          ],
                      ),
                    ],
                  )
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    'Recommended',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ],
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                        HorizontalList(),
                      HorizontalList(),
                      HorizontalList(),
                      HorizontalList(),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    'Top Chart',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ],
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      HorizontalList(),
                      HorizontalList(),
                      HorizontalList(),
                      HorizontalList(),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    'Watch by category',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ],
            ),
            Container(
              height: 200,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(child: Text('romance',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 24
                    ),),
                    color: Colors.pink,
                    padding: EdgeInsets.all(10),
                   ),
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    'top weekly',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ],
            ),
            Container(
              height: 300,
              child: ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Topwe(),
                      Topwe()

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );


  }
}
