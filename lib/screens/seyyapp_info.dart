import 'package:flutter/material.dart';
import 'package:oua_final_app/login/login.dart';
import 'package:oua_final_app/const/seyyapp_const.dart';
import 'package:oua_final_app/widget/text_large_bold_black.dart';
import 'package:oua_final_app/widget/text_small_bold_grey.dart';
class SeyyappInfo extends StatefulWidget {
  const SeyyappInfo({super.key});

  @override
  State<SeyyappInfo> createState() => _SeyyappInfoState();
}

class _SeyyappInfoState extends State<SeyyappInfo> {
  final controller = PageController();

  int? selctedPage = 0;
  final double containerHeight3 = 3;

  int flex5 = 5;
  final double top12 = 12;
  final double top50 = 50;
  final double right15 = 15;
  final double left10 = 10;

  // Yeni liste yapısı
  final List<Map<String, String>> infoList = [
    {
      'image': SeyyappConst.infoImageOne,
      'title': SeyyappConst.infoTitle,
      'context': SeyyappConst.infoContext,
    },
    {
      'image': SeyyappConst.infoImageTwo,
      'title': SeyyappConst.infoTitleOne,
      'context': SeyyappConst.infoContextOne,
    },
    {
      'image': SeyyappConst.infoImageThree,
      'title': SeyyappConst.infoTitleTwo,
      'context': SeyyappConst.infoContextTwo,
    },
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        selctedPage = controller.page?.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      backgroundColor: SeyyappConst.colorBackground,
      body: PageView.builder(
        controller: controller,
        itemCount: infoList.length,
        itemBuilder: (context, index) {
          final info = infoList[index];
          return Padding(
            padding: EdgeInsets.only(
              top: mediaHeight / top12,
            ),
            child: Column(
              children: [
                Expanded(
                  flex: flex5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: mediaWidth / right15),
                        child: _rowTextButtonSkip(context),
                      ),
                      _containerAssetImage(context, info['image']!),
                    ],
                  ),
                ),
                Expanded(
                  flex: flex5,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: mediaHeight / top50,
                        bottom: mediaHeight / right15,
                        left: mediaWidth / left10,
                        right: mediaWidth / left10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Spacer(),
                        Column(
                          children: [
                            TextLargeBoldBlack(text: info['title']!),
                            const SizedBox(height: 10),
                            TextSmallBoldGrey(text: info['context']!),
                          ],
                        ),
                        const Spacer(),
                        _textContainerButton(context),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  _textContainerButton(BuildContext context) {
    return GestureDetector(
      onTap: selctedPage == 2
          ? () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const LogIn(),
              ));
            }
          : () => controller.nextPage(
              duration: const Duration(milliseconds: 1),
              curve: Curves.bounceInOut),
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: SeyyappConst.colorRed,
          borderRadius: SeyyappConst.borderRadius10,
        ),
        child: Center(
          child: TextButton(
            onPressed: selctedPage == 2
                ? () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LogIn(),
                    ));
                  }
                : () => controller.nextPage(
                    duration: const Duration(milliseconds: 1),
                    curve: Curves.bounceInOut),
            child: Text(
              selctedPage == 2 ? SeyyappConst.infoLogin : SeyyappConst.infoNext,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: SeyyappConst.colorWhite, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Container _containerAssetImage(BuildContext context, String image) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / containerHeight3,
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.contain, image: AssetImage(image))),
    );
  }

  Row _rowTextButtonSkip(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [textButtonSkip(context)],
    );
  }

  TextButton textButtonSkip(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const LogIn(),
          ));
        },
        child: Text(SeyyappConst.infoSkip,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: SeyyappConst.colorRed, fontWeight: FontWeight.bold)));
  }
}
