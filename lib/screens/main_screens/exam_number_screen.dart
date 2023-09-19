import 'package:flutter/material.dart';
import 'package:my_university_assistant/consts.dart';

class ExamNumber extends StatelessWidget {
  const ExamNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: appBarColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
