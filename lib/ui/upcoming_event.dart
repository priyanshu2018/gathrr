import 'package:flutter/material.dart';
import 'package:gathrr/constants/data.dart';
class UpcomingEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView.builder(
          itemCount: upcomingEvents,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,index){
            return Stack(
              alignment: Alignment.bottomLeft,
              children: <Widget>[
                Container(

                  height: 250,
                  width: 270,

                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight:Radius.circular(15),topLeft:Radius.circular(15)),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(upcomingEventImages[index],
                              ),

                            )

                        ),

                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 4,left: 6),
                        height: 50,
                        width: 250,
                        child: Column(

                          children: <Widget>[
                            Text(upcomingEventName[index],style: TextStyle(color: Colors.black,fontSize: 17)),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: Colors.red,),
                                Text(upcomingEventLocation[index],style: TextStyle(color: Colors.black54,fontSize: 13),)
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(bottomRight:Radius.circular(15),bottomLeft:Radius.circular(15)),


                        ),

                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,bottom: 60),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    height: 40,
                    width: 40,
                    child: Text(upcomingEventDate[index],style: TextStyle(fontSize: 12,color: Colors.black,),),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
