import 'package:admin_panel/src/features/upload/presentation/pages/widgets/video_list/video_list_container.dart';
import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

import 'approved_video_container.dart';


class ApprovedVideo extends StatelessWidget {
  const ApprovedVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Approved Video', style: Theme.of(context).textTheme.titleMedium,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
          width: double.infinity,
          color: Theme.of(context).colorScheme.onSecondary,
          height: MediaQuery.of(context).size.height * 0.05,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: AppSize.s20,
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text('Title', style: Theme.of(context).textTheme.displayMedium,),
                ),
              ),
              Expanded(
                flex: 3,
                child: Center(child: Text('Description', style: Theme.of(context).textTheme.displayMedium,)),
              ),
              Expanded(child: Center(child: Text('Publisher', style: Theme.of(context).textTheme.displayMedium,))),
              Expanded(child: Center(child: Text('Date Publish', style: Theme.of(context).textTheme.displayMedium,))),
              const SizedBox(
                width: AppSize.s48,
              ),
            ],
          ),
        ),
        Space.h12,
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          child: ListView(
            children: const [
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 1),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 2),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 3),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 4),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 5),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 6),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 7),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 8),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 9),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 10),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 11),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 12),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 13),
              ApprovedVideoContainer(titleVideo: 'Learn Go Programming', descriptionVideo: 'In this tutorial, you\'ll get a brief introduction to Go programming', publisherVideo: 'Amirhossein', datePublishVideo: '1 month age', index: 14),

            ],
          ),
        )
      ],
    );
  }
}
