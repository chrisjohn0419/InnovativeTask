import 'package:flutter/material.dart';
import '../list/bacala_list.dart';

class TabBacala extends StatelessWidget {

  final List users;

  const TabBacala({
    required this.users,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...users.map((user) => BacalaList(
          item: user,
          icon: Icons.account_circle_rounded,
        )).toList()
      ],
    );
  }
}
