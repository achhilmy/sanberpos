import 'dart:developer';

import 'package:flutter/material.dart';

class PrintHelper {
  static void print(String text) {
    debugPrint(text);
  }

  static void printWhite(String text) {
    log('\x1B[37m$text\x1B[0m');
  }

  static void printWarning(String text) {
    log('\x1B[33m$text\x1B[0m');
  }

  static void printError(String text) {
    log('\x1B[31m$text\x1B[0m');
  }
}
