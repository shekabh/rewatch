import 'package:flutter/material.dart';

class Topwe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,10,3,0),
      child: Column(
        children: <Widget>[
          Container(
            height: 190,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/angrezi.jpg'),

                )
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text('Angrezi Medium',
                  style: TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,),

              ],
            ),
          )
        ],
      ),

    );
  }
}
