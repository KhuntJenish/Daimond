import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2controller extends GetxController {
  TextEditingController scut;
  TextEditingController scutStich;
  TextEditingController pallu;
  TextEditingController palluStich;
  TextEditingController stichPrice;
  TextEditingController cPalluStich;

  var palluPrice = '0'.obs;
  var scutPrice = '0'.obs;
  var total = '0'.obs;
  var cPalluPrice = '0'.obs;
  @override
  void onInit() {
    super.onInit();
    cPalluStich = TextEditingController();
    pallu = TextEditingController();
    palluStich = TextEditingController();
    scut = TextEditingController();
    scutStich = TextEditingController();
    stichPrice = TextEditingController();
  }

  @override
  void onClose() {
    cPalluStich.dispose();
    pallu.dispose();
    palluStich.dispose();
    scutStich.dispose();
    scut.dispose();

    stichPrice.dispose();
    super.onClose();
  }

  void cPalluCosting(var cPalluStich, var stichPrice) {
    if (cPalluStich == null || cPalluStich == '') {
      cPalluStich = '0';
    }
    cPalluPrice.value =
        ((double.parse(cPalluStich) / 1000) * 1.5 * double.parse(stichPrice))
            .toStringAsFixed(2);
    print(cPalluPrice.value);
  }

  void palluCosting(var palluStich, var pallu, var stichPrice) {
    if (palluStich == null || palluStich == '') {
      palluStich = '0';
    }
    if (pallu == null || pallu == '') {
      pallu = '0';
    }
    if (stichPrice == null || stichPrice == '') {
      stichPrice = '0';
    }
    palluPrice.value = ((double.parse(palluStich) / 1000) *
            double.parse(pallu) *
            double.parse(stichPrice))
        .toStringAsFixed(2);
  }

  void scutCosting(var scutStich, var scut, var stichPrice) {
    if (scutStich == null || scutStich == '') {
      scutStich = '0';
    }
    if (scut == null || scut == '') {
      scut = '0';
    }
    if (stichPrice == null || stichPrice == '') {
      stichPrice = '0';
    }
    scutPrice.value = ((double.parse(scutStich) / 1000) *
            double.parse(scut) *
            double.parse(stichPrice))
        .toStringAsFixed(2);
  }

  void totalCosting(var palluPrice, var scutPrice, var cPalluPrice) {
    if (palluPrice == null || palluPrice == '') {
      palluPrice = '0';
    }
    if (scutPrice == null || scutPrice == '') {
      scutPrice = '0';
    }
    total.value = (double.parse(palluPrice) +
            double.parse(scutPrice) +
            double.parse(cPalluPrice))
        .toStringAsFixed(2);
  }
}
