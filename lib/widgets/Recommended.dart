import 'package:flutter/material.dart';
import 'package:rewatch/pages/watch.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(WatchScreen.routeName);
        },
        child: Container(
                height: 180,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/avengers.jpg'),

                    )
                ),
              ),
      ),
    );

  }
}
