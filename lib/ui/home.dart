import 'package:flutter/material.dart';

class Bizcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text("MiCard",
          ),
        ),
        body:Container(
          alignment: Alignment.topCenter,
          child: Stack(
            alignment:Alignment.topCenter ,
            children: <Widget>[
              _getCard(),
              _getAvatar()
            ],
          ),
        )
    );
  }

  Container _getCard() {
    return Container(
      width:350,
      height: 200,
      margin: EdgeInsets.all(60.0),
      decoration: BoxDecoration(
          color: Colors.lightBlue[400],
          borderRadius: BorderRadius.circular(14.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Text("DIVYANSHU PRINCE",
            style: TextStyle(fontSize: 20.9,
                color: Colors.red,
                fontWeight: FontWeight.w500),),
          Text("google.com",
            style: TextStyle(color:Colors.red),),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget> [
              Icon(Icons.account_circle_outlined),
              Text("Gmail: divyanshuprince764@gmail.com",
                style:TextStyle(
                  color: Colors.red,
                ),)
            ],
          )
        ],
      ),

    );

  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(60.0)),
          border: Border.all(color: Colors.green,width: 1.2),
          image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),
              fit: BoxFit.cover)
      ),
    );
  }
}
