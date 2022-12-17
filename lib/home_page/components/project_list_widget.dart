import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:live_portfolio/core/paddings.dart';
import 'package:live_portfolio/home_page/utils/project_image_providers.dart';

const String diziyleogrenOverview = '''
Diziyleogren is an startup-awarded English vocabulary app project. The main concept consist of brings all vocabulary from the series or movies, sorting by difficulty and making a quiz.

After the first version of the App downloaded 39.000 times. I upgraded that with a lot new functionalities & way better UI/UX experience.
''';

class ProjectListWidget extends StatelessWidget {
  const ProjectListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Projects:',
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        ),
        ProjectItem(
          imageCount: 7,
        )
      ],
    );
  }
}

class ProjectItem extends StatelessWidget {
  ProjectItem({
    required this.imageCount,
    Key? key,
  }) : super(key: key);

  final borderRadius = BorderRadius.circular(10);

  final int imageCount;

  // final MultiImageProvider multiImageProvider = MultiImageProvider([
  //   Image.asset("assets/images/diziyleogren/ss1.png").image,
  //   Image.asset("assets/images/diziyleogren/ss1.png").image,
  //   Image.asset("assets/images/diziyleogren/ss1.png").image,
  //   Image.asset("assets/images/diziyleogren/ss1.png").image,
  // ]);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      elevation: 20.0,
      child: PaddingAll.m(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    'DİZİYLE ÖĞREN',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    diziyleogrenOverview,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 400,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                    },
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageCount,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(left: 8.0),
                      padding: const EdgeInsets.all(3), // Border width
                      decoration: BoxDecoration(
                          color: Colors.black54, borderRadius: borderRadius),
                      child: ClipRRect(
                        borderRadius: borderRadius,
                        child: InkWell(
                          onTap: () => showImageViewerPager(
                              context,
                              ProjectsImageProvider(
                                  count: imageCount, initialIndex: index)),
                          child: SizedBox(
                            height: 400,
                            child: Image.asset(
                                'assets/images/diziyleogren/ss$index.png',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
