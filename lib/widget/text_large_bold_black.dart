import 'package:flutter/material.dart';
import 'package:oua_final_app/const/seyyapp_const.dart';

class TextLargeBoldBlack extends StatelessWidget {
  const TextLargeBoldBlack({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: SeyyappConst.colorBlack, fontWeight: FontWeight.bold));
  }
}
