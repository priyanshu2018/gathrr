import 'package:flutter/material.dart';
import 'package:gathrr/constants/data.dart';

class CurrentEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30.0,right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width-80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage(currentEventImages),
                          fit: BoxFit.cover
                      )
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(top:45.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 5,top: 2),
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(8)),

                    ),
                    child: Text("Recent",style: TextStyle(color: Colors.grey.shade900,fontSize: 15),),
                  ),
                )
              ],

            ),
          ),
          Text(currentEventName,style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
          SizedBox(height: 3,),
          Text(currentEventLocation,style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
