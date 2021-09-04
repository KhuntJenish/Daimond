import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  Textfield({
    this.text,
    this.controller1,
    this.controller2,
  });
  final String text;
  final TextEditingController controller1;
  final TextEditingController controller2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: TextFormField(
                decoration: InputDecoration(counterText: '', hintText: 'Stich'),
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: controller1,
              ),
              width: 100,
            ),
            SizedBox(
              width: 30,
            ),
            Text('X'),
            SizedBox(
              width: 30,
            ),
            SizedBox(
              child: TextFormField(
                // initialValue: '1.5',

                keyboardType: TextInputType.number,
                decoration: InputDecoration(counterText: '', hintText: 'Head'),
                maxLength: 4,
                controller: controller2,
              ),
              width: 50,
            ),
          ],
        ),
      ],
    );
  }
}

class CpalluTextField extends StatelessWidget {
  CpalluTextField({
    this.text,
    this.controller1,
  });
  final String text;
  final TextEditingController controller1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: TextFormField(
                decoration: InputDecoration(counterText: '', hintText: 'Stich'),
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: controller1,
              ),
              width: 100,
            ),
            SizedBox(
              width: 30,
            ),
            Text('X'),
            SizedBox(
              width: 30,
            ),
            SizedBox(
              child: TextFormField(
                readOnly: true,
                initialValue: '1.5',
                keyboardType: null,
                decoration: InputDecoration(counterText: '', hintText: 'Head'),
                maxLength: 4,
              ),
              width: 50,
            ),
          ],
        ),
      ],
    );
  }
}

class StichPrice extends StatelessWidget {
  StichPrice({
    this.text,
    this.controller,
  });
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 30,
        ),
        SizedBox(
          child: TextFormField(
            decoration: InputDecoration(counterText: ''),
            maxLength: 10,
            keyboardType: TextInputType.number,
            controller: controller,
          ),
          width: 100,
        ),
      ],
    );
  }
}

class ResultCard extends StatelessWidget {
  ResultCard(
      {this.title,
      this.q1,
      this.q2,
      this.q3,
      this.a1,
      this.a2,
      this.a3,
      this.a4,
      this.q4});
  final String title;
  final String q1;
  final String q2;
  final String q3;
  final String q4;
  final String a1;
  final String a2;
  final String a3;
  final String a4;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Card(
          color: Colors.white60,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              // topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
              // bottomLeft: Radius.circular(50),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  q4 != null
                      ? resultRow(
                          String1: q4,
                          String2: a4,
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  resultRow(
                    String1: q1,
                    String2: a1,
                  ),
                  resultRow(
                    String1: q2,
                    String2: a2,
                  ),
                  SizedBox(
                    width: 250,
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  q3 != null
                      ? resultRow(
                          String1: q3,
                          String2: a3,
                        )
                      : SizedBox(
                          height: 0,
                        ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding resultRow({var String1, var String2}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(String1 != null ? String1 : null),
          Text(
            String2 != null ? String2 : null,
            // style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
