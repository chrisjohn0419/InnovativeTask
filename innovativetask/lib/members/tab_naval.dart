import 'package:flutter/material.dart';

import '../list/naval_list.dart';

class TabNaval extends StatelessWidget {
  final List naval;

  const TabNaval({
    required this.naval,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...naval.map((naval) => NavalList(
          item: naval,
          icon: Icons.account_circle_rounded,
        )).toList()
      ],
    );
  }
}
