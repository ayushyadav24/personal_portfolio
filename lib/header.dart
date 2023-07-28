import 'dart:math';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:personal/coolors.dart';
import 'package:redirect_icon/redirect_icon.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameWidget =  "Ayush\nYadav."
        .text
        .white
        .xl5
        .lineHeight(1)
        .size(context.isMobile ? 15:20)
        .bold
        .make().shimmer();
    return SafeArea(
        child: VxBox(
          child: VStack([
            ZStack([
              PictureWidget(),
              Row(
                children: [
                VStack([
                  if(context.isMobile) 50.heightBox
                  else 10.heightBox,
                  CustomAppBar().shimmer(
                    primaryColor: Coolers.accentColor,
                  ),
                  30.heightBox,
                 nameWidget,
                 20.heightBox,
                  VxBox().color(Coolers.accentColor).size(60, 10).make().shimmer(primaryColor: Coolers.accentColor),
                  30.heightBox,
                  SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth * 10,
                  v:32,
                ),
                Expanded(
                    child: VxResponsive(
                      fallback: const Offstage(),
                      medium: IntroductionWidget()
                        .pOnly(left: 120)
                          .h(context.percentHeight*60),
                      large: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight*60)
                    )
                )
              ],).w(context.screenWidth)
            ])
          ])
        ).size(context.screenWidth, context.percentHeight*50)
            .color(Coolers.secondaryColor)
            .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([

      ["- Introduction".text.gray500.widest.sm.make(),
        10.heightBox,
        "Passionate for Problem Solving, Flutter & Dart. \nGyming, Pop & Hip-Hop Music, Astronomy."
            .text
            .white
            .xl3
            .maxLines(5)
            .make().w(context.isMobile
            ?context.screenWidth
            :context.percentWidth*40),
        20.heightBox,
      ].vStack(),
    ]);
  }
}


class PictureWidget extends StatelessWidget {
  const PictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.skewX(0),
      child: Image.asset("assets/pic2.jpeg",
      fit: BoxFit.cover,
      width: double.infinity,
      height: context.percentHeight*50,),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      (IconlyBroken.activity),
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            launchUrl(Uri.parse('https://twitter.com/ay_ayush24'));
          },
          child: Icon(
            EvaIcons.twitter,
            color: Colors.white,
          ),
        ),

        20.widthBox,
        InkWell(
          onTap: () {
            launchUrl(Uri.parse('https://www.instagram.com/ay_ayush24/'));
          },
          child: Icon(
            FontAwesome.instagram,
            color: Colors.white,
          ),
        ),

        20.widthBox,
        InkWell(
          onTap: () {
            launchUrl(Uri.parse('https://github.com/ayushyadav24'));
          },
          child: Icon(
            FontAwesome.github,
            color: Colors.white,
          ),
        ),

        20.widthBox,
        InkWell(
          onTap: () {
            launchUrl(Uri.parse('https://www.linkedin.com/in/ayush-yadav-384aab201/'));
          },
          child: Icon(
            FontAwesome.linkedin,
            color: Colors.white,
          ),
        ),

      ],
    );
  }
}

