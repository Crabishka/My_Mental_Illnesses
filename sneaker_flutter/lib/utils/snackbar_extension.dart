import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension SnackbarExtension on BuildContext {
  void showSnackBar(String text) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(text)));
  }
}
