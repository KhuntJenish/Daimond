import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  Textfield({
    this.text,
    this.controller,
  });
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          SizedBox(
            width: 10,
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
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  ResultCard(
      {this.title, this.q1, this.q2, this.q3, this.a1, this.a2, this.a3});
  final String title;
  final String q1;
  final String q2;
  final String q3;
  final String a1;
  final String a2;
  final String a3;

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
                  resultRow(
                    string1: q1,
                    string2: a1,
                  ),
                  resultRow(
                    string1: q2,
                    string2: a2,
                  ),
                  q3 != null
                      ? resultRow(
                          string1: q3,
                          string2: a3,
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

  Padding resultRow({var string1, var string2}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(string1 != null ? string1 : null),
          Text(string2 != null ? string2 : null),
        ],
      ),
    );
  }
}
