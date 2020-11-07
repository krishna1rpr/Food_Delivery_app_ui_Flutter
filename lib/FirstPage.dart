import 'package:flutter/material.dart';
import 'HomePage.dart';

class FirstPage extends StatefulWidget{
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/starter-image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.35, .99],
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.2)
                  ],
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Taking Order For Faster Delivery',
                        style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold,letterSpacing: 2),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'See restaurants nearby by adding your location',
                        style: TextStyle(color: Colors.white54, fontSize: 18,letterSpacing: 2),
                      ),
                      SizedBox(height: 100,),
                    ],
                  ),
                ),
                glowButton('Start'),
                SizedBox(height: 10,),
                Center(child: Text('Now Deliver To Your Door 24/7', style: TextStyle(color: Colors.white70, fontSize: 15,),)),
                SizedBox(height: 15,)
              ],
            ),
          ),
        )
    );
  }

  Widget glowButton(title){
    return Container(
      margin: EdgeInsets.all(15),
      height: 60,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.orange.withOpacity(.99),
                Colors.yellow.withOpacity(.93)
              ],
              stops: [.2,.8],
            )
        ),
        child: FlatButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
            }
            ,
            child: Text(title, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15))
        ),
      ),
    );
  }
}
