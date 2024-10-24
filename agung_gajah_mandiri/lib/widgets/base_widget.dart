import 'dart:ui';

import 'package:flutter/material.dart';

class BaseWidget {

  static void push(BuildContext ctx, Widget widget) {
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => widget));
  }

  static void showSnackBar(BuildContext ctx, String message){
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(message)));
  }
}
