import 'package:flutter/material.dart';

class Todo_day extends StatefulWidget {
  const Todo_day({Key? key}) : super(key: key);

  @override
  State<Todo_day> createState() => _Todo_dayState();
}

class _Todo_dayState extends State<Todo_day> {

  List<int> items = List<int>.generate(5, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            background: Container(
              color: Colors.green,
            ),
            key: ValueKey<int>(items[index]),
            onDismissed: (DismissDirection direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            child: ListTile(
              title: Text(
                'Item ${items[index]}',
              ),
            ),
          );
        }
    );
  }
}
