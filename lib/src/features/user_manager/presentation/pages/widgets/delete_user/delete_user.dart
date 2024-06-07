import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:admin_panel/src/shared/ui_kits/ui_kits.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DeleteUser extends StatelessWidget {
  const DeleteUser({super.key});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: const Text('Are you sure you want to delete this user?'),
                actions: [
                  InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child: Text('Delete User', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.error),),
                  ),
                  Space.w16,
                  InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child: Text('Cancel User', style: Theme.of(context).textTheme.bodyMedium,),
                  ),
                ],
            );
          },
        );
      },
      child: Icon(IconManager.delete, size: AppSize.s24, color: ColorThemeManager.redColor,),
    );
  }
}