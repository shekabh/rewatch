import 'package:flutter/material.dart';

class SushantS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,10,3,0),
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: 122,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/msd.jpg'),

                )
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text('M.S.Dhoni',
                    style: TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,),
                Icon(
                  Icons.star,size: 10,color: Colors.yellow,
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}
