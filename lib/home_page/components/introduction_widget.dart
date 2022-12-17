import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:live_portfolio/core/paddings.dart';
import 'package:live_portfolio/gen/assets.gen.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 100,
          backgroundColor: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(child: Image.asset(Assets.images.pp.path)),
          ),
        ),
        PaddingTop.m(
          child: AnimatedTextKit(
            pause: const Duration(seconds: 1),
            repeatForever: false,
            totalRepeatCount: 1,
            overrideTexts: false,
            appendPadding: const EdgeInsets.only(bottom: 16.0),
            displayFullTextOnTap: true,
            animatedTexts: [
              TypewriterAnimatedText('Hello!',
                  speed: const Duration(milliseconds: 100),
                  textStyle: Theme.of(context).textTheme.headline2),
              TypewriterAnimatedText(
                speed: const Duration(milliseconds: 50),
                'I build fully-specified mobile applications for both Android & IOS',
                textStyle: Theme.of(context).textTheme.titleLarge,
              ),
              TypewriterAnimatedText(
                speed: const Duration(milliseconds: 50),
                'You can contact me via my e-mail',
                textStyle: Theme.of(context).textTheme.titleLarge,
              ),
              TypewriterAnimatedText(
                speed: const Duration(milliseconds: 50),
                'me@okandemir.net',
                textStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        )
      ],
    );
  }
}
