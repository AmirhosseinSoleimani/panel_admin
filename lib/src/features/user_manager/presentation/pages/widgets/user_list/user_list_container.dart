import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

class UserListContainer extends StatelessWidget {
  const UserListContainer({super.key, required this.name, required this.userName, required this.email, required this.role, required this.enrolled, required this.index});
  final int index;
  final String name;
  final String userName;
  final String email;
  final String enrolled;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: AppSize.s28,
              child: Row(
                children: [
                  SizedBox(
                    width: AppSize.s18,
                    child: Text('$index', style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.start,),
                  ),
                  Space.w4,
                  VerticalDivider(
                    thickness: AppSize.s1,
                    width: AppSize.s1,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  Space.w4,
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Center(
                    child: Row(
                      children: [
                        Container(
                          width: AppSize.s28,
                          height: AppSize.s28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/image/user_profile.jpg'),
                        ),
                        Text(name, style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ))),
            Expanded(
              flex: 3,
              child: Center(child: Text(email, style: Theme.of(context).textTheme.bodyMedium)),
            ),
            Expanded(child: Center(child: Text(role, style: Theme.of(context).textTheme.bodyMedium))),
            Expanded(child: Center(child: Text(enrolled, style: Theme.of(context).textTheme.bodyMedium))),
            SizedBox(
              width: AppSize.s48,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(IconManager.check, size: AppSize.s24, color: ColorThemeManager.green,),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(IconManager.close, size: AppSize.s24, color: ColorThemeManager.redColor,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
