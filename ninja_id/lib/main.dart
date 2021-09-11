import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: NinjaCard(),

));

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
          appBar: AppBar(

            title: Text("Ninja ID Card"),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
            elevation: 0.0,
          ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                  ninjaLevel++;
              });

            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[850],
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                      backgroundImage: AssetImage("assets/lilith-azami.jpg"),
                      radius: 40.0,

                  ),
                ),
                Divider(
                  height: 90.0,
                  color: Colors.grey[800],
                ),
                Text(
                  "NAME",
                    style: TextStyle(
                       color: Colors.grey,
                       letterSpacing: 2.0,
                      ),
                  ),
                SizedBox(height: 2.0,),
                Text(
                  "Lilith-Azami",
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0,),
                Text(
                  "Current Ninja Level",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  "$ninjaLevel",
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0,),
                Row(
                    children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.grey[400],
                        ),
                        SizedBox(width: 10.0,),
                        Text(
                          "lilithazami.com.uk",
                           style: TextStyle(
                             color: Colors.grey[400]
                           ),
                        ),
                    ],
                ),
              ],
            ),
        ),
    );
  }
}


