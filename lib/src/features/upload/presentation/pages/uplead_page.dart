import 'package:admin_panel/src/features/upload/presentation/pages/widgets/upload_video_container.dart';
import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatelessWidget {
  static const uploadPageName = '/upload-page';
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Column(
            children: [
              UploadVideoContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
