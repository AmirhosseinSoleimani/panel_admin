import 'package:admin_panel/src/features/upload/presentation/pages/widgets/video_list/video_list_container.dart';
import 'package:admin_panel/src/features/user_manager/presentation/pages/widgets/user_list/user_list_container.dart';
import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';


class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('User List', style: Theme.of(context).textTheme.titleMedium,),
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
                flex: 3,
                child: Center(
                  child: Text('Name', style: Theme.of(context).textTheme.displayMedium,),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Center(child: Text('Email', style: Theme.of(context).textTheme.displayMedium,),
                  )),
              Expanded(
                child: Center(child: Text('Role', style: Theme.of(context).textTheme.displayMedium,)),
              ),
              Expanded(child: Center(child: Text('Enrolled', style: Theme.of(context).textTheme.displayMedium,))),
              const SizedBox(
                width: AppSize.s48,
              ),
            ],
          ),
        ),
        Space.h12,
        ListView(
          shrinkWrap: true,
          children: const [
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 1,),
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 2,),
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 3,),
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 4,),
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 5,),
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 6,),
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 7,),
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 8,),
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 9,),
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 10,),
            UserListContainer(name: 'Amirhossein Soleimani', userName: '@AhSoleimani', email: 'Ah.Soleimani1313@gmail.com', role: 'User', enrolled: '6/7/2024', index: 11,),
          ],
        )
      ],
    );
  }
}