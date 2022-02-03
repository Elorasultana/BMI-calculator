import 'dart:ui';

import 'package:bmicalculator/result.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool checkbotton = false;
  double _value = 5;
  int height = 0;
  int weight = 20;
  int age=15;
  void increment() {
    setState(() {
      weight++;
    });
  }

  void decrement() {
    setState(() {
      weight--;
    });
  }
   void ageincrement(){
     setState(() {
       age++;
     });
   }

   void agedecrement(){
     setState(() {
       age--;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E2252),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 8,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      checkbotton = true;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      color: checkbotton == false
                          ? Color(0xFF003B73)
                          : Color(0xFF0074B7),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 100,
                          color: Colors.white,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      checkbotton = false;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: 225,
                    decoration: BoxDecoration(
                      color: checkbotton == true
                          ? Color(0xFF003B73)
                          : Color(0xFF0074B7),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.female,
                          size: 100,
                          color: Colors.white,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF003B73),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                   '${_value.toStringAsFixed(2)} CM' ,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Slider(
                    value: _value,
                    max: 100,
                    min: 5,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                        
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Color(0xFF003B73),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT(KG)',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  increment();
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  decrement();
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: 218,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',style: TextStyle(
                        color: Colors.white,
                      ),),
                      Text(age.toString(),style: TextStyle(
                        color: Colors.white
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  ageincrement();
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(width: 10,),
                           Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  agedecrement();
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>BMIresult(_value,weight)));
              }, child: Text('CALCULATE')))
        ],
      ),
    );
  }
}
