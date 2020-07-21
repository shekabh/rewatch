import 'package:flutter/material.dart';
import 'package:rewatch/pages/home.dart';
import 'package:rewatch/pages/loading.dart';
import 'package:rewatch/pages/watch.dart';


void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {

     '/home': (context) => Home(),
      WatchScreen.routeName: (ctx) => WatchScreen()
    }

));








