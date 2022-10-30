import 'package:flutter/material.dart';
import 'package:innovativetask/members/tab_canete.dart';
import 'package:innovativetask/members/tab_dagondon.dart';
import 'package:innovativetask/members/tab_losbanos.dart';
import 'package:innovativetask/members/tab_mosqueda.dart';
import 'package:innovativetask/members/tab_naval.dart';
import 'package:innovativetask/members/tab_ong.dart';
import 'package:innovativetask/models/bacala.dart';

import 'members/tab_bacala.dart';
import 'members/tab_bracho.dart';
import 'models/naval.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _PageOneState();
}

class _PageOneState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;

  List users = [
    Bacala(name: 'Mama'),
    Bacala(name: 'Papa'),
    Bacala(name: 'Siblings')
  ];


  List naval = [
    Naval(name: 'Ma. Roscel N. Sebaria', relationship: 'Mother', leading: const CircleAvatar(
      backgroundImage: AssetImage('assets/mama.png'),
    )
    ),
    Naval(name: 'Joel B. Sebaria', relationship: 'Father', leading: const CircleAvatar(
      backgroundImage: AssetImage('assets/papa.png'),
    )),
    Naval(name: 'Princess Johanna Naval', relationship: 'Sister', leading: const CircleAvatar(
      backgroundImage: AssetImage('assets/ate.png'),
    ))
  ];

  @override
  void initState() {
    tabController = TabController(length: 8, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/naval.jpg'),
          ),
          title: Text("Innovative Task 1",
              style: TextStyle(color: Colors.white),
          ),
          subtitle: Text("Group 1",
            style: TextStyle(color: Colors.white),),
        ),
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          tabs: const [
            Tab(child: Text('Bacala')),
            Tab(child: Text('Bracho')),
            Tab(child: Text('Cañete')),
            Tab(child: Text('Dagondon')),
            Tab(child: Text('Los Baños')),
            Tab(child: Text('Mosqueda')),
            Tab(child: Text('Naval')),
            Tab(child: Text('Ong'))
          ],
        ),
      ),
      // drawer: const CustomDrawer(),
      body: TabBarView(
        controller: tabController,
        children: [
          TabBacala(users: users),
          TabBracho(naval: naval),
          TabCanete(naval: naval),
          TabDagondon(naval: naval),
          TabLosBanos(naval: naval),
          TabMosqueda(naval: naval),
          TabNaval(naval: naval),
          TabOng(naval: naval),
        ],
      ),
    );
  }
}
