import 'package:admin_panel/src/features/profile/presentation/pages/widgets/profile_widget/profile_widget.dart';
import 'package:admin_panel/src/features/profile/presentation/pages/widgets/setting_widget/setting_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const profilePageName = '/profile-page';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: SettingWidget(),
              ),
              Expanded(
                flex: 3,
                child: ProfileWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}