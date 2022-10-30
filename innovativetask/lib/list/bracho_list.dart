import 'package:flutter/material.dart';
import 'package:innovativetask/models/Bracho.dart';
import 'package:innovativetask/pages/pagebracho.dart';
import '../slideleft.dart';


class BrachoList extends StatelessWidget {

  final Bracho bracho;
  final IconData icon;

  const BrachoList({
    required this.bracho,
    required this.icon,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(bracho.name ?? 'No Name'),
        onTap: () {
          Navigator.push(
            context, SlideLeft(page: PageBracho(bracho: bracho)),
          );
        },
      ),
    );
  }
}
