import 'package:flutter/material.dart';
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
  const _LargeLayout();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: const [
          Expanded(flex: 2, child: IntroductionWidget()),
          Expanded(flex: 3, child: ProjectListWidget())
        ],
      ),
    );
  }
}

class _SmallLayout extends StatelessWidget {
  const _SmallLayout();

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
