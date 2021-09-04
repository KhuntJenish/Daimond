import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1controller extends GetxController {
  var selectedindex = 0.obs;
  TextEditingController tSaree;
  TextEditingController sButta;
  TextEditingController shButta;
  TextEditingController shPaperPrice;
  TextEditingController shDaimond;
  TextEditingController dprice;
  TextEditingController pkgDaimond;
  var controller;
  var tDaimond = '0'.obs;
  var bDaimond = '0'.obs;
  var tDaimondInSaree = '0'.obs;
  var tSheet = '0'.obs;
  var tPackage = '0'.obs;
  var sareePrice = '0'.obs;
  var sheetPrice = '0'.obs;
  var tPrice = '0'.obs;
  var sSheet = '0'.obs;
  var isDarkMode = Get.isDarkMode ? true.obs : false.obs;

  void onInit() {
    super.onInit();
    print('init is called.');
    controller = PageController(initialPage: 0);
    tSaree = TextEditingController();
    sButta = TextEditingController();
    shButta = TextEditingController();
    shPaperPrice = TextEditingController();
    shDaimond = TextEditingController();
    dprice = TextEditingController();
    pkgDaimond = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    controller.dispose();
    tSaree.dispose();
    sButta.dispose();
    shButta.dispose();
    shDaimond.dispose();
    shPaperPrice.dispose();
    dprice.dispose();
    pkgDaimond.dispose();
  }

  void totalDaimond(var bDaimond, var sButta, var tSaree) {
    if (bDaimond == null || bDaimond == '') {
      bDaimond = '0';
    }
    if (sButta == null || sButta == '') {
      sButta = '0';
    }
    if (tSaree == null || tSaree == '') {
      tSaree = '0';
    }
    tDaimond.value =
        (double.parse(bDaimond) * double.parse(sButta) * double.parse(tSaree))
            .toStringAsFixed(2);
  }

  void buttaDaimond(var shDaimond, var shButta) {
    if (shDaimond == null || shDaimond == '') {
      shDaimond = '0';
    }
    if (shButta == null || shButta == '') {
      shButta = '0';
    }
    bDaimond.value =
        (double.parse(shDaimond) / double.parse(shButta)).toStringAsFixed(2);
  }

  void totalDaimondInSaree(var bDaimond, var sButta) {
    if (bDaimond == null || bDaimond == '') {
      bDaimond = '0';
    }
    if (sButta == null || sButta == '') {
      sButta = '0';
    }
    tDaimondInSaree.value =
        (double.parse(bDaimond) * double.parse(sButta)).toStringAsFixed(2);
  }

  void totalsheet(String shButta, String tSaree, var sButta) {
    if (shButta == null || shButta == '') {
      shButta = '0';
    }
    if (tSaree == null || tSaree == '') {
      tSaree = '0';
    }
    if (sButta == null || sButta == '') {
      sButta = '0';
    }
    tSheet.value =
        ((double.parse(sButta) * int.parse(tSaree)) / int.parse(shButta))
            .toStringAsFixed(2);
  }

  void totalpkg(var tDaimond, String pkgDaimond) {
    if (tDaimond == null ||
        tDaimond == '' ||
        pkgDaimond == null ||
        pkgDaimond == '') {
      tDaimond = '0';
      pkgDaimond = '1';
    } else {
      tPackage.value =
          (double.parse(tDaimond) / int.parse(pkgDaimond)).toStringAsFixed(2);
    }
    // print(double.parse(tDaimond));
    // print(int.parse(pkgDaimond));
    // print(double.parse(tDaimond) / double.parse(pkgDaimond));
  }

  void oneSheetPrice(var tDaimondInSheet, String dprice, var shPaperPrice) {
    if (tDaimondInSheet == null || tDaimondInSheet == '') {
      tDaimondInSheet = '0';
    }
    if (dprice == null || dprice == '') {
      dprice = '0';
    }
    if (shPaperPrice == null || shPaperPrice == '') {
      shPaperPrice = '0';
    }
    sheetPrice.value =
        (((double.parse(tDaimondInSheet) / 100) * double.parse(dprice) +
                double.parse(shPaperPrice)))
            .toStringAsFixed(2);
  }

  void totalPrice(var tDaimond, String dprice, var tSheet, var shPaperPrice) {
    if (tDaimond == null || tDaimond == '') {
      tDaimond = '0';
    }
    if (dprice == null || dprice == '') {
      dprice = '0';
    }
    if (tSheet == null || tSheet == '') {
      tSheet = '0';
    }
    if (shPaperPrice == null || shPaperPrice == '') {
      shPaperPrice = '0';
    }
    var a = ((double.parse(tDaimond) / 100) * double.parse(dprice));
    var b = (double.parse(tSheet) * double.parse(shPaperPrice));
    tPrice.value = (a + b).toStringAsFixed(2);
  }

  void oneSareeSheet(var shButta, var sButta) {
    if (shButta == null || shButta == '') {
      shButta = '0';
    }
    if (sButta == null || sButta == '') {
      sButta = '0';
    }
    sSheet.value =
        (double.parse(sButta) / double.parse(shButta)).toStringAsFixed(2);
  }

  void oneSareePrice(
      var tDaimondInSaree, String dprice, var sSheet, var shPaperPrice) {
    if (tDaimondInSaree == null || tDaimondInSaree == '') {
      tDaimondInSaree = '0';
    }
    if (dprice == null || dprice == '') {
      dprice = '0';
    }
    if (sSheet == null || sSheet == '') {
      sSheet = '0';
    }
    if (shPaperPrice == null || shPaperPrice == '') {
      shPaperPrice = '0';
    }
    var a = ((double.parse(tDaimondInSaree) / 100) * double.parse(dprice));
    var b = (double.parse(sSheet) * double.parse(shPaperPrice));
    sareePrice.value = (a + b).toStringAsFixed(2);
  }
}
