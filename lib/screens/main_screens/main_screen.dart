import 'package:flutter/material.dart';

import '../../consts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            backgroundColor: appBarColor,
            title: Center(
                child: Text(
              'الرئيسية',
              style: appBarFontStyle,
            )),
          ),
          body: const Column(
            children: [
              TabBar(tabs: [
                Tab(
                    icon: Icon(
                  Icons.home,
                  color: Colors.green,
                )),
                Tab(
                    icon: Icon(
                  Icons.home,
                  color: Colors.green,
                )),
                Tab(
                    icon: Icon(
                  Icons.home,
                  color: Colors.green,
                ))
              ]),
              Expanded(
                  child: TabBarView(children: [
                Center(
                  child: Text('1'),
                ),
                Center(
                  child: Text('2'),
                ),
                Center(
                  child: Text('3'),
                ),
              ]))
            ],
          ),
        ));
  }
}
