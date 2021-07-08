import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({ Key? key }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String eqn = "";
  String res = "";
  String restemp = "";
  double a = 0;
  double b = 0;
  double result = 0;

  void equalto() {
    setState(() {
      int inc = 0;
      for (int i = 0; i < eqn.length;i++) {
        if (eqn[i] == "+") {
          a = double.parse(eqn.substring(0,i));
          b = double.parse(eqn.substring(i+1));
          result = a + b;
          inc = inc + 1;
          break;
        }
        if (eqn[i] == "-") {
          a = double.parse(eqn.substring(0,i));
          b = double.parse(eqn.substring(i+1));
          result = a - b;
          inc = inc + 1;
          break;
        }
        if (eqn[i] == "*") {
          a = double.parse(eqn.substring(0,i));
          b = double.parse(eqn.substring(i+1));
          result = a * b;
          inc = inc + 1;
          break;
        }
        if (eqn[i] == "/") {
          a = double.parse(eqn.substring(0,i));
          b = double.parse(eqn.substring(i+1));
          result = a / b;
          inc = inc + 1;
          break;
        }
      }
      if (inc == 1) {
      res= result.toString();
      }
      if (inc == 0) {
        res = eqn;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: 372.5,
                  child:
                  Text(
                    "$eqn",
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.amber[100],
                      fontFamily: 'Oxygen',
                    ),),
                )
              ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: 372.5,
                  child: 
                  Text(
                    "$res",
                    style: TextStyle(
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[200],
                      fontFamily: 'Oxygen',
                    ),
                   
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    ),
                )
              ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: 
                  ElevatedButton(
                  onPressed: () {
                    setState(() {
                      res = "";
                      eqn = "";
                    });
                  },  
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: 
                    Text("C",
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen,
                      fontFamily: 'Oxygen',
                  )
                 ),
                  ),
                  ),
                ),
                Expanded(
                flex:1,
                child:
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      eqn = eqn.substring(0, eqn.length - 1);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text("DEL",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreen,
                        fontFamily: 'Oxygen',
                    )
                    ),
                  ),
                ),
                ),
              ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        eqn = eqn + "7";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900],
                  ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text("7",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Oxygen',
                      )
                    ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child:
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        eqn = eqn + "8";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900],
                  ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text("8",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Oxygen',
                        )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: 
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        eqn = eqn + "9";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900],
                  ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text("9",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Oxygen',
                        )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: 
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        eqn = eqn + "+";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900],
                  ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text("+",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent,
                        fontFamily: 'Oxygen',
                        )
                      ),
                    ),
                  ),
                ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                flex: 1,
                child: 
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                        eqn = eqn + "4";
                      });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Text("4",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Oxygen',
                      )
                    ),
                  ),
                ),
                ),
                Expanded(
                flex: 1,
                child: 
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                        eqn = eqn + "5";
                      });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Text("5",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Oxygen',
                        )
                      ),
                  ),
                ),
                ),
                Expanded(
                flex:1,
                child: 
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        eqn = eqn + "6";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900],
                  ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text("6",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Oxygen',
                        )
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 1,
                child:
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        eqn = eqn + "-";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text("-",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent,
                        fontFamily: 'Oxygen',
                        )
                      ),
                    ),
                  ),
                ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        eqn = eqn + "1";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text("1",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                        )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        eqn = eqn + "2";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text("2",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          )
                        ),
                    ),
                  ),
                ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                        eqn = eqn + "3";
                      });
                      },
                      style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                    ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Text("3",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          )
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                        eqn = eqn + "*";
                      });
                      },
                      style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Text("*",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent,
                          fontFamily: 'Oxygen',
                          )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        eqn = eqn + ".";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text(".",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                        )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        eqn = eqn + "0";
                      });
                    }, 
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical : 30.0),
                      child: Text("0",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          )
                        ),
                    ),
                    ),
                ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                    onPressed: () {
                      equalto();
                    }, 
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text("=",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen,
                          fontFamily: 'Oxygen',
                          )
                        ),
                    ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                        eqn = eqn + "/";
                      });
                      }, 
                      style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Text("/",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent,
                          fontFamily: 'Oxygen',
                          )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
        ),
      ),
    );
  }
}

