import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.grey.withOpacity(.0),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.shopping_basket, color: Colors.black.withOpacity(.7), size: 28,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Food Delivery', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listButton('Pizza'),
                  listButton('Burger'),
                  listButton('Kabbab'),
                  listButton('Dessert'),
                  listButton('Salad')
                ],
              ),
            ),
            SizedBox(height: 30,),
            Text('Free delivery', style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listItem('assets/images/one.jpg'),
                  listItem('assets/images/two.jpg'),
                  listItem('assets/images/three.jpg'),
                ],
              )
            )

          ],
        ),
      )
    );
  }

  Widget listButton(title){
    return Container(
      margin: EdgeInsets.only(right: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                stops: [.6, .99],
                colors: [
                  Colors.orange.withOpacity(.8),
                  Colors.orange.withOpacity(.8)
                ]
            ),
          ),
          child: MaterialButton(
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(title, style: TextStyle(color: Colors.white, fontSize: 17, ),),
            ),
          ),
        )
    );
  }


  Widget listItem(image){
    return Container(
      margin: EdgeInsets.only(right: 30, top: 20),
      width: MediaQuery.of(context).size.width * .75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [.2, .9],
            colors: [
              Colors.black.withOpacity(.7),
              Colors.black.withOpacity(.2)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Icon(Icons.favorite, size: 30, color: Colors.white,)],
              ),
              Expanded(child: Container(),),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\$ 13.00', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),),
                  SizedBox(height: 15,),
                  Text('Vegetarian Pizza', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                  SizedBox(height: 5,)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
