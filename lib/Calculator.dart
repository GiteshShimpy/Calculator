import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String firstvalue = '';
  String secondvalue = '';
  String operator = '';
  String result = '0';
  String history = "0";
  String lstvalue = '';

  void assignvalue(String val) {
    lstvalue = val;
    if (firstvalue == '' && operator == '' && secondvalue == '') {
      if (val == '%' || val == '*' || val == '+' || val == '-' || val == '÷') {
        setState(() {
          result = val;
          history = result;
          print(val);
        });
      } else {
        firstvalue = val;
        print(firstvalue);
        setState(() {
          result = firstvalue;
          history = result;
        });
      }
    } else if (firstvalue != '' && operator == '' && secondvalue == '') {
      if (val == '%' || val == '*' || val == '+' || val == '-' || val == '÷') {
        operator = val;
        print(operator);
        setState(() {
          result = result + operator;
          history = result;
        });
      } else {
        firstvalue = ((int.parse(firstvalue) * 10) + int.parse(val)).toString();
        print(firstvalue);
        setState(() {
          result = firstvalue.toString();
          history = result;
        });
      }
    } else if (firstvalue.length > 1 && operator != '' && secondvalue == '') {
      if (val == '%' || val == '*' || val == '+' || val == '-' || val == '÷') {
        result = ((result.length) - 1).toString();
        operator = val;
        setState(() {
          result = result + operator;
        });
      } else {
        secondvalue = val;

        print(secondvalue);
        setState(() {
          result = result + secondvalue.toString();
          history = result;
        });
      }
    } else if (firstvalue != '' && operator != '' && secondvalue == '') {
      if (val == '%' || val == '*' || val == '+' || val == '-' || val == '÷') {
        result = ((result.length) - 1).toString();
        print(result);
        operator = val;
        print(operator);
        setState(() {
          result = result + operator;
          print(result);
          history = result;
        });
      } else {
        secondvalue = val;

        print(secondvalue);
        setState(() {
          result = result + secondvalue.toString();
          history = result;
        });
      }
    } else if (firstvalue != '' && operator != '' && secondvalue != '') {
      if (val == '%' || val == '*' || val == '+' || val == '-' || val == '÷') {
        result = ((result.length) - 1).toString();
        operator = val;
        print(operator);
        setState(() {
          result = result + operator;
          history = result;
        });
      } else {
        secondvalue =
            ((int.parse(secondvalue) * 10) + int.parse(val)).toString();
        print(secondvalue);
        setState(() {
          result = result + (int.parse(secondvalue) % 10).toString();
          ////////////
          history = result;
        });
      }
    }
  }

  void addition() {
    setState(() {
      result = (int.parse(firstvalue) + int.parse(secondvalue)).toString();

      firstvalue = result;
      operator = '';
      secondvalue = '';
    });
  }

  void subtsraction() {
    setState(() {
      result = ((int.parse(firstvalue)) - (int.parse(secondvalue))).toString();

      firstvalue = result;
      operator = '';
      secondvalue = '';
    });
  }

  void multipication() {
    setState(() {
      result = (int.parse(firstvalue) * int.parse(secondvalue)).toString();

      firstvalue = result;
      operator = '';
      secondvalue = '';
    });
  }

  void division() {
    setState(() {
      result = (int.parse(firstvalue) / int.parse(secondvalue)).toString();

      firstvalue = result;
      operator = '';
      secondvalue = '';
    });
  }

  void modulous() {
    setState(() {
      result = (int.parse(firstvalue) % int.parse(secondvalue)).toString();

      firstvalue = result;
      operator = '';
      secondvalue = '';
    });
  }

  void performOperation() {
    switch (operator) {
      case "-":
        {
          subtsraction();
        }
        break;
      case "+":
        {
          addition();
        }
        break;
      case "*":
        {
          multipication();
        }
        break;
      case "÷":
        {
          division();
        }
        break;
      case "%":
        {
          modulous();
        }
    }
  }

  int A = 255;
  int B = 243;
  int C = 243;
  int D = 243;

  int m = 255;
  int n = 39;
  int o = 39;
  int p = 39;

  int a = 0;
  int r = 0;
  int g = 0;
  int b = 0;
  bool setter = false;
  @override
  Widget build(BuildContext context) {
    var mycolors = "black";
    return Scaffold(
        backgroundColor: Color.fromARGB(a, r, g, b),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 105, 42, 101),
          actions: [
            IconButton(
              icon: Icon(
                Icons.sunny,
              ),
              onPressed: () {
                setState(() {
                  if (setter == false) {
                    a = 255;
                    r = 255;
                    g = 255;
                    b = 255;

                    A = 255;
                    B = 0;
                    C = 0;
                    D = 0;

                    m = 255;
                    n = 243;
                    o = 241;
                    p = 241;

                    setter = true;
                  } else {
                    A = 255;
                    B = 243;
                    C = 243;
                    D = 243;

                    a = 0;
                    r = 0;
                    g = 0;
                    b = 0;

                    m = 255;
                    n = 39;
                    o = 39;
                    p = 39;
                    setter = false;
                  }
                });
              },
            ),
          ],
          title: Text(
            "Calculator",
            style: TextStyle(fontSize: 25.0),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 280.0,
                child: Container(
                  decoration: BoxDecoration(
                      border: (Border.all(
                          width: 0.1, color: Color.fromARGB(255, 25, 25, 25))),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(m, n, o, p),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 28, 28, 28),
                            spreadRadius: 3.0,
                            blurRadius: 5.0,
                            blurStyle: BlurStyle.normal),
                      ]),
                  margin: EdgeInsets.only(top: 100.0, left: 12.0, right: 12.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text(
                          result,
                          style: TextStyle(
                              color: Color.fromARGB(A, B, C, D),
                              fontSize: 50.0),
                        ),
                        alignment: Alignment(0.9, 10.0),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 78.0),
                        height: 40.0,
                        child: Text(
                          history,
                          style: TextStyle(
                              color: Color.fromARGB(A, B, C, D),
                              fontSize: 25.0),
                        ),
                        alignment: Alignment(0.88, 0.0),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Row(
                children: [
                  SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("%");
                      },
                      child: Text(
                        "%",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("÷");
                      },
                      child: Text(
                        "÷",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          firstvalue = '';
                          secondvalue = '';
                          operator = '';
                          result = '0';
                          history = "0";
                        });
                      },
                      child: Text(
                        "CE",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 96, 46, 102),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (result.length > 1) {
                            result = result.substring(0, result.length - 1);
                            if (lstvalue == "+" ||
                                lstvalue == "-" ||
                                lstvalue == "*" ||
                                lstvalue == "/" ||
                                lstvalue == "%") {
                              operator = "";
                            } else if (secondvalue != '') {
                              secondvalue = secondvalue.substring(
                                  0, secondvalue.length - 1);
                            } else {
                              firstvalue = firstvalue.substring(
                                  0, firstvalue.length - 1);
                            }
                          } else {
                            firstvalue = '';
                            result = '0';
                            history = result.substring(0, result.length - 1);
                          }
                        });
                      },
                      child: Icon(Icons.backspace_outlined)),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("7");
                      },
                      child: Text(
                        "7",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("8");
                      },
                      child: Text(
                        "8",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("9");
                      },
                      child: Text(
                        "9",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 96, 46, 102),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("*");
                      },
                      child: Text(
                        "*",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white),
                      )),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("4");
                      },
                      child: Text(
                        "4",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("5");
                      },
                      child: Text(
                        "5",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("6");
                      },
                      child: Text(
                        "6",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 96, 46, 102),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("-");
                      },
                      child: Text(
                        "-",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white),
                      )),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("1");
                      },
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("2");
                      },
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("3");
                      },
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 96, 46, 102),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("+");
                      },
                      child: Text(
                        "+",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white),
                      )),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("+/-");
                      },
                      child: Text(
                        "+/-",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue("0");
                      },
                      child: Text(
                        "0",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 26, 27, 27),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        assignvalue(".");
                      },
                      child: Text(
                        "~",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 95, 95, 95),
                        primary: Color.fromARGB(255, 140, 49, 154),
                        minimumSize: Size(75.0, 68.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        performOperation();
                      },
                      child: Text(
                        "=",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white),
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}
