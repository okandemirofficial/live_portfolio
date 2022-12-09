import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:live_portfolio/gen/assets.gen.dart';
import 'package:live_portfolio/home_page/components/introduction_widget.dart';
import 'package:live_portfolio/home_page/components/project_list_widget.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return (const Scaffold(
      backgroundColor: Colors.black87,
      body: _LargeLayout(),
    ));
  }
}

class _LargeLayout extends StatelessWidget {
  const _LargeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: const [
          Expanded(flex: 1, child: IntroductionWidget()),
          Expanded(flex: 3, child: ProjectListWidget())
        ],
      ),
    );
  }
}

class _SmallLayout extends StatelessWidget {
  const _SmallLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
