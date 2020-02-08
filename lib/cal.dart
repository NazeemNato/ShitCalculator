import 'package:flutter/material.dart';

// Shit calculator by Muhammmed Nazeem | NazeemNato
class MyCal extends StatefulWidget {
  MyCal({Key key}) : super(key: key);
  @override
  _MyCalState createState() => _MyCalState();
}

class _MyCalState extends State<MyCal> {
  String theNum = "";
  String oldNum, theFn;
  var fstNum, sum, sndNum;
  void pfun(v) {
    //theNum = "";
    theNum = theNum + v;
    setState(() {
      theNum = theNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              // Creating a boxed container
              height:
                  Theme.of(context).textTheme.display1.fontSize * 0.5 + 100.0,
            ),
            alignment: Alignment.bottomRight,
            // Aligning the text to the bottom right of our display screen
            color: Colors.white,
            // Seting the background color of the container
            child: Text(
              theNum,
              style: TextStyle(
                  // Styling the text
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.right,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button("7", 7),
              button("8", 8),
              button("9", 9),
              new MaterialButton(
                  height: 80.0,
                  child: new Text("+",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.0)),
                  //  color: Color("0ffx3498db"),
                  onPressed: () {
                    setState(() {
                      oldNum = theNum;
                      theNum = "";
                      theFn = "add";
                    });
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button("4", 4),
              button("5", 5),
              button("6", 6),
              new MaterialButton(
                  height: 80.0,
                  child: new Text("-",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.0)),
                  onPressed: () {
                    setState(() {
                      oldNum = theNum;
                      theNum = "";
                      theFn = "sub";
                      //oldNum = oldNum;
                    });
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button("1", 1),
              button("2", 2),
              button("3", 3),
              new MaterialButton(
                  height: 80.0,
                  child: new Text("/",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.0)),
                  onPressed: () {
                    setState(() {
                      oldNum = theNum;
                      theNum = "";
                      theFn = "div";
                      //oldNum = oldNum;
                    });
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new MaterialButton(
                  height: 80.0,
                  child: new Text("C",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.0)),
                  onPressed: () {
                    setState(() {
                      theNum = '';
                      oldNum = '';
                    });
                  }),
              button("0", 0),
              new MaterialButton(
                  height: 80.0,
                  child: new Text("=",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.0)),
                  onPressed: () {
                    sndNum = int.parse(theNum);
                    fstNum = int.parse(oldNum);
                    if (theFn == "add") {
                      sum = fstNum + sndNum;
                      theNum = sum.toString();
                      setState(() {
                        theNum = theNum;
                      });
                    }
                    if (theFn == "sub") {
                      sum = fstNum - sndNum;
                      theNum = sum.toString();
                      setState(() {
                        theNum = theNum;
                      });
                    }
                    if (theFn == "mul") {
                      sum = fstNum * sndNum;
                      theNum = sum.toString();
                      setState(() {
                        theNum = theNum;
                      });
                    }
                    if (theFn == "div") {
                      if (sndNum == 0) {
                        theNum = "Sorry Zero Error";
                      }
                      sum = fstNum / sndNum;
                      theNum = sum.toString();
                      setState(() {
                        theNum = theNum;
                      });
                    }
                    setState(() {
                      theNum = theNum;
                    });
                  }),
              new MaterialButton(
                  height: 80.0,
                  child: new Text("X",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.0)),
                  onPressed: () {
                    setState(() {
                      oldNum = theNum;
                      theNum = "";
                      theFn = "mul";
                      //oldNum = oldNum;
                    });
                  })
            ],
          )
        ],
      ),
    ));
  }

  Widget button(String ltr, vv) {
    return new MaterialButton(
        height: 80.0,
        child: new Text(ltr,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
        onPressed: () => pfun(ltr));
  }
}
