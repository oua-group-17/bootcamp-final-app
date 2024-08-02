import 'package:flutter/material.dart';
import 'package:oua_final_app/const/seyyapp_const.dart';

class PageDesign extends StatelessWidget {
  const PageDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(SeyyappConst.textPageDesing,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: SeyyappConst.colorBlue,
                    )),
            SeyyappConst.sizedBoxHeight20,
            CircularProgressIndicator.adaptive(
              backgroundColor: SeyyappConst.colorRed,
            ),
          ],
        ),
      ),
    );
  }
}
