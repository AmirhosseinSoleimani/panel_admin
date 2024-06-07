import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

import 'overview_container.dart';

class BlogOverview extends StatelessWidget {
  const BlogOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Dashboard', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary, fontSize: AppSize.s12)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Blog Overview', style: Theme.of(context).textTheme.displayLarge),
            IntrinsicHeight(
              child: Row(
                children: [
                  Stack(
                    children: [
                      Icon(IconManager.notification, size: AppSize.s28, color: Theme.of(context).colorScheme.onSecondary,),
                      Container(
                          width: AppSize.s16,
                          height: AppSize.s16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppSize.s60),
                              color: Theme.of(context).colorScheme.secondaryContainer
                          ),
                        child: Center(child: Text('2', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.error),)),
                      )
                    ],
                  ),
                  Space.w8,
                  VerticalDivider(
                    thickness: AppSize.s1,
                    width: AppSize.s1,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  Space.w8,
                  Container(
                    width: AppSize.s42,
                    height: AppSize.s42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s60),
                        color: Theme.of(context).colorScheme.secondaryContainer
                    ),
                    child: const Center(
                      child: Icon(
                          IconManager.profile
                      ),
                    ),
                  ),
                  Space.w8,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Amirhossein Soleimani', style: Theme.of(context).textTheme.bodyMedium,),
                      Text('@AhSoleimani', style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: AppSize.s12),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: OverviewContainer(
                title: 'PAGES',
                number: '182',
                rate: '+12.4%',
              ),
            ),
            Expanded(
              child: OverviewContainer(
                title: 'COMMENTS',
                number: '8147',
                rate: '-3.8%',
              ),
            ),
            Expanded(
              child: OverviewContainer(
                title: 'USERS',
                number: '2412',
                rate: '+12.4%',
              ),
            ),
            Expanded(
              child: OverviewContainer(
                title: 'VIDEOS',
                number: '182',
                rate: '-8.3%',
              ),
            )
          ],
        )
      ],
    );
  }
}
