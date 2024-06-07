import 'package:admin_panel/src/features/home/presentation/pages/widgets/container_blog/blog_overview.dart';
import 'package:admin_panel/src/features/home/presentation/pages/widgets/user_chart/user_chart.dart';
import 'package:admin_panel/src/features/home/presentation/pages/widgets/user_device_chart/user_device_chart.dart';
import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const homePageName = '/home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Column(
            children: [
              const BlogOverview(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(child: UserChart()),
                    Expanded(child: UserDeviceChart()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}