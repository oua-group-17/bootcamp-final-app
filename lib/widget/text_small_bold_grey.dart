import 'package:flutter/material.dart';
import 'package:oua_final_app/const/seyyapp_const.dart';

class TextSmallBoldGrey extends StatelessWidget {
  const TextSmallBoldGrey({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: SeyyappConst.colorGrey,
              fontWeight: FontWeight.bold,
            ));
  }
}
