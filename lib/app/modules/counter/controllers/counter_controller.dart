import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 10) {
      Get.snackbar('Warning', 'Udah ah capek',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.amber);
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Warning', 'Udah Batas Yaa Gantengg',
          backgroundColor: Colors.redAccent);
    } else {
      bilangan.value--;
    }
  }

  void resetAngka() {
    bilangan.value = 0;
    Get.snackbar('Info', 'Reset ke 0',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blueAccent);
  }
}