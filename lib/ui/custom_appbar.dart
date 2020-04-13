import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.8,
      width: MediaQuery.of(context).size.width,
      //color: Colors.pinkAccent,
      child: CustomPaint(
        painter: CurvePainter(),
        child: Padding(
          padding: const EdgeInsets.only(top:50.0,right: 20,left: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'gathrr',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35,fontFamily: 'Baloo'),),
                  Icon(Icons.notifications_active,color: Colors.white,size: 35,)

                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}
class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint();
    paint1.color = Colors.blue.shade700;
    paint1.style = PaintingStyle.fill;

    var path1 = Path();
    path1.moveTo(0, size.height/3);
    path1.quadraticBezierTo(size.width/2, size.height/2,size.width,size.height/3);
    path1.lineTo(size.width, 0);
    path1.lineTo(0, 0);

    canvas.drawPath(path1,paint1);
    var paint = Paint();
    paint.color = Colors.lightBlueAccent;
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.width/8);
    path.quadraticBezierTo(size.width/2, size.height/2,size.width,size.height/4);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);


    canvas.drawPath(path,paint);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;


}