import 'package:flutter/material.dart';



Widget glowButton(title, onPress){
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
          onPressed: onPress(),
          child: Text(title, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15))
      ),
    ),
  );
}