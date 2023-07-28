import 'package:flutter/material.dart';
import 'package:personal/coolors.dart';
import 'package:personal/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
      VxDevice(mobile: VStack([
        "Intrested in a conversation on Tech, Space or anything?\nLet's talk about it."
        .text.center.white.xl2.make(),
        10.heightBox,
        "ay.ayushyadav@gmail.com"
            .text
            .color(Coolers.accentColor)
        .semiBold
        .make()
        .box
        .border(color: Coolers.accentColor)
        .p16
        .rounded
        .make()
      ],
        crossAlignment: CrossAxisAlignment.center,
      ),

          web: HStack([
        "Intrested in a conversation on Tech, Space or anything?\nLet's talk about it."
            .text.center.white.xl2.make(),
            10.widthBox,
        "ay.ayushyadav@gmail.com"
            .text
            .color(Coolers.accentColor)
            .semiBold
            .make()
            .box
            .border(color: Coolers.accentColor)
            .p16
            .rounded
            .make()
      ],
        alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
      ),
      30.heightBox,
      CustomAppBar(),
      10.heightBox,
      "Thanks for Scrolling."
      .richText
      .semiBold
      .white
      .make()
    ],
    crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}


