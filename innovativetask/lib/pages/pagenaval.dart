import 'package:flutter/material.dart';
import '../models/naval.dart';

class PageNaval extends StatelessWidget {

  final Naval naval;

  const PageNaval({
    required this.naval,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Name'),
      ),
      body: Center(
        child: Text(naval.name ?? 'No name'),
      ),
    );
  }
}
