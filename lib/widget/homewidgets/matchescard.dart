import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ENG"),
                SizedBox(
                  width: 50,
                ),
                Text("166-4"),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("NZ"),
                SizedBox(
                  width: 50,
                ),
                Text("167-5"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
