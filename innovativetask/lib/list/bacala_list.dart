import 'package:flutter/material.dart';
import '../models/bacala.dart';
import '../pages/pagebacala.dart';
import '../slideleft.dart';

class BacalaList extends StatelessWidget {

  final Bacala item;
  final IconData icon;

  const BacalaList({
    required this.item,
    required this.icon,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(item.name ?? 'No Name'),
        onTap: () {
          Navigator.push(
            context, SlideLeft(page: PageBacala(user: item)),
          );
        },
      ),
    );
  }
}
