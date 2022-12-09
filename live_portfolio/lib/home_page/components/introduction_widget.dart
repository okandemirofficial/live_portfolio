import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
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
        AnimatedTextKit(
          repeatForever: true,
          displayFullTextOnTap: true,
          animatedTexts: [
            TypewriterAnimatedText('Hello!',
                speed: const Duration(milliseconds: 100),
                textStyle: Theme.of(context).textTheme.headline4),
            TypewriterAnimatedText(
              'I build fully-specified mobile applications for both Android & IOS',
            )
          ],
        )
      ],
    );
  }
}
