import 'package:admin_panel/src/features/user_manager/presentation/pages/widgets/user_list/user_list.dart';
import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

class UserManagerPage extends StatelessWidget {
  static const userManagerPageName = '/user-manager-page';
  const UserManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Column(
            children: [
              UserList(),
            ],
          ),
        ),
      ),
    );
  }
}