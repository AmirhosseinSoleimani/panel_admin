import 'package:admin_panel/src/features/profile/presentation/pages/widgets/edit_profile/edit_profile.dart';
import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppPadding.p8),
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s12),
          color: Theme.of(context).colorScheme.surface,
          border: Border.all(
              width: AppSize.s2,
              color: Theme.of(context).colorScheme.secondaryContainer)),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Profile', style: Theme.of(context).textTheme.bodyMedium),
                const EditProfile(
                  firstName: 'Amirhossein',
                  middleName: '---',
                  lastName: 'Soleimani',
                  email: 'Ah.Soleimani@gmail.com',
                  phoneNumber: '+9383202865',
                  job: '---',
                  birthday: '3/4/1997',
                  gender: 'Male',
                ),
              ],
            ),
            Space.h16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('First Name', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
                      Space.h8,
                      Text('Amirhossein', style: Theme.of(context).textTheme.bodyMedium)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Middle Name', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
                      Space.h8,
                      Text('---', style: Theme.of(context).textTheme.bodyMedium)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Last Name', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
                      Space.h8,
                      Text('Soleimani', style: Theme.of(context).textTheme.bodyMedium)
                    ],
                  ),
                )
              ],
            ),
            Space.h16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
                      Space.h8,
                      Text('Ah.Soleimani@gmail.com', style: Theme.of(context).textTheme.bodyMedium,)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Phone Number', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
                      Space.h8,
                      Text('+9383202865', style: Theme.of(context).textTheme.bodyMedium,)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gender', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
                      Space.h8,
                      Text('Male', style: Theme.of(context).textTheme.bodyMedium,)
                    ],
                  ),
                )
              ],
            ),
            Space.h16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Enrolled', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
                      Space.h8,
                      Text('6/7/2024', style: Theme.of(context).textTheme.bodyMedium,)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Birthday', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
                      Space.h8,
                      Text('3/4/1997', style: Theme.of(context).textTheme.bodyMedium,)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Job', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
                      Space.h8,
                      Text('---', style: Theme.of(context).textTheme.bodyMedium,)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
