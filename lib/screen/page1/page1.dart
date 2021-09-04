import 'package:calculator/common/commonPage1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page1controller.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    Page1controller page1Controller = Get.find<Page1controller>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    margin: EdgeInsets.only(left: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    color: Colors.white60,
                    elevation: 10,
                    child: Container(
                      height: (MediaQuery.of(context).size.height) * 0.8,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 30, left: 30, top: 20, bottom: 15),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Textfield(
                              text: 'Total Saree :',
                              controller: page1Controller.tSaree,
                            ),
                            Textfield(
                              text: 'Total butta in Saree :',
                              controller: page1Controller.sButta,
                            ),
                            Textfield(
                              text: 'Total butta in sheet :',
                              controller: page1Controller.shButta,
                            ),
                            Textfield(
                              text: 'daimonds of Sheet :',
                              controller: page1Controller.shDaimond,
                            ),
                            Textfield(
                              text: 'Daimond(100) Price :',
                              controller: page1Controller.dprice,
                            ),
                            Textfield(
                              text: 'Daimond(pkg) :',
                              controller: page1Controller.pkgDaimond,
                            ),
                            Textfield(
                              text: 'One SheetPaper Price :',
                              controller: page1Controller.shPaperPrice,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.greenAccent[800]),
                                    ),
                                    onPressed: () {
                                      FocusScope.of(context).unfocus();
                                      if (page1Controller.tSaree.text == '' ||
                                          page1Controller.sButta.text == '' &&
                                              page1Controller.shButta.text ==
                                                  '' &&
                                              page1Controller.shDaimond.text ==
                                                  '' &&
                                              page1Controller.dprice.text ==
                                                  '' &&
                                              page1Controller.pkgDaimond.text ==
                                                  '' &&
                                              page1Controller
                                                      .shPaperPrice.text ==
                                                  '') {
                                        print("jenish");
                                      }

                                      print(page1Controller.bDaimond.value);
                                      page1Controller.buttaDaimond(
                                          page1Controller.shDaimond.text,
                                          page1Controller.shButta.text);
                                      print(page1Controller.bDaimond.value);
                                      page1Controller.totalDaimond(
                                        page1Controller.bDaimond.value,
                                        page1Controller.sButta.text,
                                        page1Controller.tSaree.text,
                                      );

                                      page1Controller.totalDaimondInSaree(
                                        page1Controller.bDaimond.value,
                                        page1Controller.sButta.text,
                                      );
                                      page1Controller.totalsheet(
                                          page1Controller.shButta.text,
                                          page1Controller.tSaree.text,
                                          page1Controller.sButta.text);
                                      page1Controller.totalpkg(
                                        page1Controller.tDaimond.value,
                                        page1Controller.pkgDaimond.text,
                                      );
                                      page1Controller.oneSheetPrice(
                                        page1Controller.shDaimond.text,
                                        page1Controller.dprice.text,
                                        page1Controller.shPaperPrice.text,
                                      );
                                      page1Controller.oneSareeSheet(
                                        page1Controller.shButta.text,
                                        page1Controller.sButta.text,
                                      );
                                      page1Controller.oneSareePrice(
                                        page1Controller.tDaimondInSaree.value,
                                        page1Controller.dprice.text,
                                        page1Controller.sSheet.value,
                                        page1Controller.shPaperPrice.text,
                                      );
                                      page1Controller.totalPrice(
                                          page1Controller.tDaimond.value,
                                          page1Controller.dprice.text,
                                          page1Controller.tSheet.value,
                                          page1Controller.shPaperPrice.text);
                                    },
                                    child: Text('Submit'),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (page1Controller.tSaree.text != '' ||
                                          page1Controller.sButta.text != '' ||
                                          page1Controller.shButta.text != '' ||
                                          page1Controller.shDaimond.text !=
                                              '' ||
                                          page1Controller.dprice.text != '' ||
                                          page1Controller.pkgDaimond.text !=
                                              '' ||
                                          page1Controller.shPaperPrice.text !=
                                              '') {
                                        FocusScope.of(context).unfocus();

                                        page1Controller.tDaimond.value = '0';
                                        page1Controller.bDaimond.value = '0';
                                        page1Controller.tDaimondInSaree.value =
                                            '0';
                                        page1Controller.tSheet.value = '0';
                                        page1Controller.tPackage.value = '0';
                                        page1Controller.sareePrice.value = '0';
                                        page1Controller.sheetPrice.value = '0';
                                        page1Controller.tPrice.value = '0';
                                        page1Controller.sSheet.value = '0';

                                        page1Controller.tSaree.clear();
                                        page1Controller.sButta.clear();
                                        page1Controller.shButta.clear();
                                        page1Controller.shDaimond.clear();
                                        page1Controller.dprice.clear();
                                        page1Controller.pkgDaimond.clear();
                                        page1Controller.shPaperPrice.clear();
                                      } else {
                                        FocusScope.of(context).unfocus();
                                        Get.snackbar(
                                          'Already Reset',
                                          'All field are already reseted.',
                                          icon: Icon(Icons.restore,
                                              color: Colors.white),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 15, horizontal: 20),
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          colorText: Colors.white70,
                                          backgroundColor: Colors.black38,
                                        );
                                        print('value is ');
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
                  Container(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        // topRight: Radius.circular(50),
                      ),
                    ),
                    height: (MediaQuery.of(context).size.height) * 1,
                    child: Card(
                      margin: EdgeInsets.zero,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          // topRight: Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(
                              () => ResultCard(
                                title: '➱ Daimond Counter :',
                                q1: 'Total Daimonds of one Saree : ',
                                a1: page1Controller.tDaimondInSaree.value == ''
                                    ? ''
                                    : '${page1Controller.tDaimondInSaree}',
                                q2: 'Total Daimonds of one Butta : ',
                                a2: page1Controller.bDaimond.value == '' ||
                                        page1Controller.bDaimond.value == null
                                    ? ''
                                    : '${page1Controller.bDaimond}',
                                q3: 'Total daimons of all Saree : ',
                                a3: page1Controller.tDaimond.value == ''
                                    ? ''
                                    : '${page1Controller.tDaimond}',
                              ),
                            ),
                            Obx(
                              () => ResultCard(
                                title: '➱ Required Items :',
                                q1: 'Total no. of Sheet : ',
                                a1: page1Controller.tSheet.value == ''
                                    ? ''
                                    : '${page1Controller.tSheet}',
                                q2: 'Total no. of Package : ',
                                a2: page1Controller.tPackage.value == ''
                                    ? ''
                                    : '${page1Controller.tPackage}',
                                q3: 'Total Sheet of one Saree :',
                                a3: page1Controller.sSheet.value == ''
                                    ? ''
                                    : '${page1Controller.sSheet}',
                              ),
                            ),
                            Obx(
                              () => ResultCard(
                                title: '➱ Final Price :',
                                q1: 'Price of one Saree : ',
                                a1: page1Controller.sareePrice.value == ''
                                    ? ''
                                    : '${page1Controller.sareePrice}',
                                q2: 'Price of one Sheet : ',
                                a2: page1Controller.sheetPrice.value == ''
                                    ? ''
                                    : '${page1Controller.sheetPrice}',
                                q3: 'Price of all Saree : ',
                                a3: page1Controller.tPrice.value == ''
                                    ? ''
                                    : '${page1Controller.tPrice}',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
