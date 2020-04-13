import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gathrr/ui/ongoing_event.dart';
import 'package:gathrr/ui/past_event.dart';
import 'package:gathrr/ui/upcoming_event.dart';

class AppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: ListView(
        padding: EdgeInsets.only(left: 20,right: 20),
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          CurrentEvent(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Text("Upcoming Events",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
            Text("see more >>>",style: TextStyle(color: Colors.lightBlueAccent.shade700,fontSize: 13),)
          ],),
          SizedBox(
            height: 10,
          ),
          UpcomingEvents(),
          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Text("Past Events",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
            Text("see more >>>",style: TextStyle(color: Colors.lightBlueAccent.shade700,fontSize: 13),)
          ],),
          SizedBox(
            height: 10,
          ),
          PastEvents(),
          SizedBox(
            height: 30,
          )

        ],
      ),
    );
  }
}
