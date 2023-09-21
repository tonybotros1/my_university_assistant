import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_university_assistant/consts.dart';

import '../../controllers/mian_screen_controllers/exam_number_controller.dart';

class ExamNumber extends StatelessWidget {
  const ExamNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(GetBuilder<ExamNumberController>(
              init: ExamNumberController(),
              builder: (controller) {
                return Container(
                  height: 350,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            flex: 4,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(40, 0, 40, 16),
                              child: TextField(),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: FittedBox(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  ': الرقم الامتحاني',
                                  style: bottomSheetTextStyle,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Divider(
                          color: appBarColor,
                          height: 20,
                          thickness: 1,
                        ),
                      ),
                      Column(
                        children: [
                          FittedBox(
                              child: Text(
                            'العام الدراسي',
                            style: bottomSheetTextStyle,
                          )),
                          // ListView.builder( //                         in progress
                          //     scrollDirection: Axis.horizontal,
                          //     shrinkWrap: true,
                          //     itemCount: controller.years.length,
                          //     itemBuilder: (context, i) {

                          //     })
                        ],
                      )
                    ],
                  ),
                );
              }));
        },
        backgroundColor: appBarColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
