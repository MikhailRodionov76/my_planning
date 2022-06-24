import 'package:flutter/material.dart';
import 'package:my_planning/todo_day.dart';

class Day extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Plan for today"),
        ),
        body: Column(
            children: [
              Container(
                  height: 450,
                  child: GestureDetector(
                    onTap: () {print('OOO');},
                    child: Todo_day(),
                  )
              ),
              Container(
                  color: Colors.grey,
                  height: 150,
                  width: 150,
                  child: GestureDetector(
                    onTap: (){print('HELLO');},
                    child: Text('AAA'),
                  )
                  )
            ])
        );

  }
}