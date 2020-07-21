import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:rewatch/widgets/Recommended.dart';

class WatchScreen extends StatefulWidget {
  static const routeName = '/watch';

  @override
  _WatchScreenState createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  String videoUrl = "https://www.youtube.com/watch?v=E8IQFIOKGtY";
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('REWATCH'),
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,20,20,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          flex: 12,
                          child: Text('M.S DHONI',style: TextStyle(
                          fontSize: 28,fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,color: Colors.white,
            ),),
                        ),
                        Expanded(flex: 1,child: Text('5',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,
                            letterSpacing: 2.5,color: Colors.white))),Expanded(flex: 1,child: Icon(Icons.star,color: Colors.yellow,))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Expanded(flex: 7,child: Text('bollywood,2018,Drama',style: TextStyle(color: Colors.white),)),
                        Expanded(flex: 3,child: Text('Best of sushant',style: TextStyle(color: Colors.white),))
                      ],
                    ),
                  )
                ],
              )
            ),
            Container(
              child: Column(
                children: <Widget>[
                  YoutubePlayer(
                    controller: _controller,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 0, 8),
              child: Row(
                children: <Widget>[
                  Text('About the film',textAlign: TextAlign.start,style: TextStyle(fontSize: 18,color: Colors.white),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              child: Container(
                height: 200,
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Card(
                          elevation: 5,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height:200,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/msd.jpg')
                                  ),

                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 150,
                                child: Container(width: 150,child: Text('we go to the moon ')),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    'Also Watch',
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
            SizedBox(height: 20,),
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
          ],
        ),
      ),


    );
  }
}









  