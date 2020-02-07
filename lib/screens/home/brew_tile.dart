import 'package:flutter/material.dart';
import 'package:brew_crew/models/brew.dart';


class BrewTile extends StatelessWidget {

  final Brew brew;
  BrewTile({this.brew});
  String sugar = 'sugars';

  
  @override
  Widget build(BuildContext context) {

    if (brew.sugars=='1') {
      sugar = 'sugar';
    }


    return Padding(
      padding: EdgeInsetsDirectional.only(top: 8),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/coffee_icon.png'),
            radius: 25,
            backgroundColor: Colors.brown[brew.strength],
          ),
          title: Text(brew.name),
          subtitle: Text('Takes ${brew.sugars} $sugar'),
        ),
      ),
    );
  }
}