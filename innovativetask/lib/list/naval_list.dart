import 'package:flutter/material.dart';
import 'package:innovativetask/pages/pagenaval.dart';
import '../models/naval.dart';
import '../slideleft.dart';


class NavalList extends StatelessWidget {

  final Naval item;
  final IconData icon;

  const NavalList({
    required this.item,
    required this.icon,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(item.name ?? 'No Name'),
        subtitle: Text(item.relationship ?? 'No Sub'),
        onTap: () {
          Navigator.push(
            context, SlideLeft(page: PageNaval(naval: item)),
          );
        },
      ),
    );
  }
}
