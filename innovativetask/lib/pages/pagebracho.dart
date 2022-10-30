import 'package:flutter/material.dart';
import '../models/Bracho.dart';

class PageBracho extends StatelessWidget {

  final Bracho bracho;

  const PageBracho({
    required this.bracho,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: Center(
        child: Text(bracho.name ?? 'No name'),
      ),
    );
  }
}
