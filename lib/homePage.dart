import 'package:flutter/material.dart';

class GST extends StatefulWidget {
  const GST({Key? key}) : super(key: key);

  @override
  State<GST> createState() => _GSTState();
}

class _GSTState extends State<GST> {
  String OR = '';
  double gst = 0;
  double FP = 0;
  double Rate = 0;
  double i = 0;

  List c1 = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ORIGINAL PRICE", style: TextStyle(fontSize: 25)),
                      Align(
                          alignment: Alignment.centerRight,
                          child:
                          Text("$OR Rs.", style: TextStyle(fontSize: 25))),
                    ],
                  ),
                ),
              ),
              Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("GST", style: TextStyle(fontSize: 25)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    c1[0] = Colors.orange;
                                    c1[1] = Color(0xffEEEEEE);
                                    c1[2] = Color(0xffEEEEEE);
                                    c1[3] = Color(0xffEEEEEE);
                                    c1[4] = Color(0xffEEEEEE);
                                    gst = double.parse(OR);
                                    FP = (3 * gst) / 100;
                                    Rate = FP;
                                    FP = FP + gst;
                                  });
                                },
                                child: Box("3", c1[0])),
                          ),
                          Expanded(
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    c1[1] = Colors.orange;
                                    c1[0] = Color(0xffEEEEEE);
                                    c1[2] = Color(0xffEEEEEE);
                                    c1[3] = Color(0xffEEEEEE);
                                    c1[4] = Color(0xffEEEEEE);
                                    gst = double.parse(OR);
                                    FP = (5 * gst) / 100;
                                    Rate = FP;
                                    FP = FP + gst;
                                  });
                                },
                                child: Box("5", c1[1])),
                          ),
                          Expanded(
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    c1[2] = Colors.orange;
                                    c1[1] = Color(0xffEEEEEE);
                                    c1[0] = Color(0xffEEEEEE);
                                    c1[3] = Color(0xffEEEEEE);
                                    c1[4] = Color(0xffEEEEEE);
                                    gst = double.parse(OR);
                                    FP = (12 * gst) / 100;
                                    Rate = FP;
                                    FP = FP + gst;
                                  });
                                },
                                child: Box("12", c1[2])),
                          ),
                          Expanded(
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    c1[3] = Colors.orange;
                                    c1[1] = Color(0xffEEEEEE);
                                    c1[2] = Color(0xffEEEEEE);
                                    c1[0] = Color(0xffEEEEEE);
                                    c1[4] = Color(0xffEEEEEE);
                                    gst = double.parse(OR);
                                    FP = (18 * gst) / 100;
                                    Rate = FP;
                                    FP = FP + gst;
                                  });
                                },
                                child: Box("18", c1[3])),
                          ),
                          Expanded(
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    c1[4] = Colors.orange;
                                    c1[1] = Color(0xffEEEEEE);
                                    c1[2] = Color(0xffEEEEEE);
                                    c1[3] = Color(0xffEEEEEE);
                                    c1[0] = Color(0xffEEEEEE);
                                    gst = double.parse(OR);
                                    FP = (28 * gst) / 100;
                                    Rate = FP;
                                    FP = FP + gst;
                                  });
                                },
                                child: Box("28", c1[4])),
                          ),
                        ],
                      )
                    ],
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("FINAL PRICE", style: TextStyle(fontSize: 25)),
                      //SizedBox(width: 75,),
                      Align(
                          alignment: Alignment.centerRight,
                          child:
                          Text("$FP Rs.", style: TextStyle(fontSize: 25))),
                    ],
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 75,
                decoration: BoxDecoration(
                    color: Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("CGST/SGST", style: TextStyle(fontSize: 25)),
                    Text("${Rate / 2}", style: TextStyle(fontSize: 25)),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '7';
                                        });
                                      },
                                      child: Box2("7")),
                                ),
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '8';
                                        });
                                      },
                                      child: Box2("8")),
                                ),
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '9';
                                        });
                                      },
                                      child: Box2("9")),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '4';
                                        });
                                      },
                                      child: Box2("4")),
                                ),
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '5';
                                        });
                                      },
                                      child: Box2("5")),
                                ),
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '6';
                                        });
                                      },
                                      child: Box2("6")),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          OR = '';
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 250,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text("AC",
                            style:
                            TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '1';
                                        });
                                      },
                                      child: Box2("1")),
                                ),
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '2';
                                        });
                                      },
                                      child: Box2("2")),
                                ),
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '3';
                                        });
                                      },
                                      child: Box2("3")),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '00';
                                        });
                                      },
                                      child: Box2("00")),
                                ),
                                Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          OR = OR + '0';
                                        });
                                      },
                                      child: Box2("0")),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        OR = OR + '.';
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                        child: Text(
                                          ".",
                                          style: TextStyle(fontSize: 50),
                                        ),
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
                    InkWell(
                      onTap: () {
                        setState(() {
                          OR = OR.substring(0, OR.length - 1);
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 250,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(Icons.backspace_outlined,
                            color: Colors.white, size: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box(String data, Color c12) {
    return Container(
      height: 30,
      width: 50,
      decoration:
      BoxDecoration(color: c12, borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.center,
      child: Text("$data%", style: TextStyle(fontSize: 18)),
    );
  }

  Widget Box2(String data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        child: Text("$data", style: TextStyle(fontSize: 50)),
      ),
    );
  }
}