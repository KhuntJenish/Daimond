import 'package:calculator/common/commonPage2.dart';
import 'package:calculator/screen/page2/page2contorller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Page2controller page2controller = Get.find<Page2controller>();
    Page2controller page2controller = Get.put(Page2controller());

    return Column(
      children: [
        Expanded(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: (MediaQuery.of(context).size.height -
                                  MediaQuery.of(context).padding.top) *
                              0.5,
                          child: Card(
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            color: Colors.white60,
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 30, left: 30, top: 20, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CpalluTextField(
                                    text: 'Cpallu :',
                                    controller1: page2controller.cPalluStich,
                                  ),
                                  Textfield(
                                    text: 'Pallu :',
                                    controller1: page2controller.palluStich,
                                    controller2: page2controller.pallu,
                                  ),
                                  Textfield(
                                    text: 'Scut :',
                                    controller1: page2controller.scutStich,
                                    controller2: page2controller.scut,
                                  ),
                                  StichPrice(
                                    text: 'Stich Price :',
                                    controller: page2controller.stichPrice,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.greenAccent[800]),
                                          ),
                                          onPressed: () {
                                            if (page2controller.pallu.text ==
                                                    '' ||
                                                page2controller.scut.text ==
                                                    '' ||
                                                page2controller
                                                        .stichPrice.text ==
                                                    '' ||
                                                page2controller
                                                        .scutStich.text ==
                                                    '' ||
                                                page2controller
                                                        .palluStich.text ==
                                                    '') {
                                              print('ENter all record');
                                              FocusScope.of(context).unfocus();

                                              Get.snackbar(
                                                'Do Not Submited',
                                                'Plz Enter Record Properly.',
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 15,
                                                    horizontal: 20),
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 10),
                                                colorText: Colors.white70,
                                                backgroundColor: Colors.black38,
                                              );
                                            } else {
                                              FocusScope.of(context).unfocus();
                                              page2controller.cPalluCosting(
                                                  page2controller
                                                      .cPalluStich.text,
                                                  page2controller
                                                      .stichPrice.text);
                                              page2controller.palluCosting(
                                                page2controller.palluStich.text,
                                                page2controller.pallu.text,
                                                page2controller.stichPrice.text,
                                              );
                                              page2controller.scutCosting(
                                                page2controller.scutStich.text,
                                                page2controller.scut.text,
                                                page2controller.stichPrice.text,
                                              );
                                              page2controller.totalCosting(
                                                page2controller
                                                    .palluPrice.value,
                                                page2controller.scutPrice.value,
                                                page2controller
                                                    .cPalluPrice.value,
                                              );
                                            }
                                          },
                                          child: Text('Submit'),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            if (page2controller.scut.text !=
                                                    '' ||
                                                page2controller.pallu.text !=
                                                    '' ||
                                                page2controller
                                                        .stichPrice.text !=
                                                    '' ||
                                                page2controller
                                                        .palluStich.text !=
                                                    '' ||
                                                page2controller
                                                        .scutStich.text !=
                                                    '') {
                                              page2controller.pallu.clear();
                                              page2controller.scut.clear();
                                              page2controller.cPalluStich
                                                  .clear();
                                              page2controller.stichPrice
                                                  .clear();
                                              page2controller.palluStich
                                                  .clear();
                                              page2controller.scutStich.clear();
                                            } else {
                                              FocusScope.of(context).unfocus();
                                              Get.snackbar(
                                                'Already Reset',
                                                'All field are already reseted.',
                                                icon: Icon(Icons.restore,
                                                    color: Colors.white),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 15,
                                                    horizontal: 20),
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 10),
                                                colorText: Colors.white70,
                                                backgroundColor: Colors.black38,
                                              );
                                            }
                                          },
                                          child: Text('Reset'),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.zero,
                        elevation: 0,
                        // color: Colors.black12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          height: (MediaQuery.of(context).size.height -
                                  // appbar.preferredSize.height -
                                  MediaQuery.of(context).padding.top) *
                              0.7,
                          child: Obx(
                            () => ResultCard(
                              title: '➱Embroidery Counter :',
                              q1: 'Pallu Price : ',
                              a1: page2controller.palluPrice.value == ''
                                  ? ''
                                  : '${page2controller.palluPrice}',
                              q2: 'Scut Price : ',
                              a2: page2controller.scutPrice.value == ''
                                  ? ''
                                  : '${page2controller.scutPrice}',
                              q3: 'Total price : ',
                              a3: page2controller.total.value == ''
                                  ? ''
                                  : '${page2controller.total}',
                              q4: 'Cpallu Price',
                              a4: page2controller.cPalluPrice.value == ''
                                  ? ''
                                  : '${page2controller.cPalluPrice}',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
