import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  _MakeItRainState createState() => _MakeItRainState();
}

class _MakeItRainState extends State<MakeItRain> {

  int counter = 100;

  void raiseMoney(){
    setState(() {
      counter += 100;
    });
  }

  void deductMoney(){
    setState(() {

      counter-=100;
    });
  }

  Color getColor(){
    if(counter > 1000 && counter<2000){
      return Colors.greenAccent.shade700;
    }else if(counter > 2000){
      return Colors.blue.shade700;
    }else if(counter < 0){
      return Colors.red.shade700;
    }else{
      return Colors.greenAccent.shade400;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Make It Rain"),
        backgroundColor: Colors.green,
      ),
      body: Container
        (
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [

            Center(

              child: Text(

                "Get Rich",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "\$$counter",
                  style: TextStyle(
                      color: getColor(),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(



                child: Row(children: [
                  Center(child: FlatButton(
                color: Colors.greenAccent,
                  textColor: Colors.white,
                  onPressed: () =>{ raiseMoney() },
                  child: Text(
                    "Let it rain",
                    style: TextStyle(fontSize: 30),
                  ),
                ),),
                 Center(child: FlatButton(
                   color: Colors.redAccent,
                   textColor: Colors.white,
                   onPressed: () =>{ deductMoney() },
                   child: Text(
                     "Make It Poor",
                     style: TextStyle(fontSize: 30),
                   ),
                 ),),

                ],)
              ),

          ],
        ),
      ),
    );
  }
}
