import 'package:flutter/material.dart';

import '../../consts.dart';
import 'exam_number_screen.dart';

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
          body: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TabBar(
                  // isScrollable: true,
                  indicatorColor: appBarColor,
                  tabs: [
                    Tab(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                      child: SizedBox(
                        child: Text(
                          'الرقم المتحاني',
                          style: mainPageFontStyle,
                        ),
                      ),
                    ),
                    Tab(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                      child: Text(
                        'المحضرات',
                        style: mainPageFontStyle,
                      ),
                    ),
                    Tab(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                      child: Text(
                        'علاماتي',
                        style: mainPageFontStyle,
                      ),
                    )
                  ]),
              const Expanded(
                  child: TabBarView(children: [
                Center(
                  child: ExamNumber(),
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
