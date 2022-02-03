import 'package:flutter/material.dart';

class BMIresult extends StatefulWidget {
  final height;
  final weight;
  BMIresult(this.height, this.weight);

  @override
  State<BMIresult> createState() => _BMIresultState();
}

class _BMIresultState extends State<BMIresult> {
  double result = 0;
  double multiple = 0;
  @override
  void initState() {
    multiple = widget.height*0.01 * widget.height*0.01;
    result = widget.weight / multiple;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2E2252),
        appBar: AppBar(
          title: Text('BMI Result'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Your Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: double.infinity,
                  color: Color(0xFF003B75),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Normal',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        result.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'You have a normal body weight,good jobs',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
