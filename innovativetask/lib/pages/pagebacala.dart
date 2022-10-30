import 'package:flutter/material.dart';
import '../models/bacala.dart';

class PageBacala extends StatelessWidget {

  final Bacala user;

  const PageBacala({
    required this.user,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Center(
        child: Text(user.name ?? 'No name'),
      ),
    );
  }
}
