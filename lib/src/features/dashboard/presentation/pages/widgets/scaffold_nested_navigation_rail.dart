import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScaffoldWithNestedNavigationRail extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  const ScaffoldWithNestedNavigationRail(
      {super.key,
        required this.navigationShell,
        required this.selectedIndex,
        required this.onDestinationSelected,
      });


  @override
  Widget build(BuildContext context) {
    final textLocalization = AppLocalizations.of(context)!;
    return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              selectedIndex: selectedIndex,
              destinations: <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(IconManager.home, size: AppSize.s24, color: Theme.of(context).colorScheme.onSecondary),
                  selectedIcon: Icon(IconManager.homeFill, size: AppSize.s24, color: Theme.of(context).colorScheme.tertiary),
                  label: Text(textLocalization.home, style: Theme.of(context).textTheme.bodyLarge),
                ),
                NavigationRailDestination(
                  icon: Icon(IconManager.upload, size: AppSize.s24, color: Theme.of(context).colorScheme.onSecondary,),
                  selectedIcon: Icon(IconManager.uploadFill, size: AppSize.s24, color: Theme.of(context).colorScheme.tertiary),
                  label: Text(textLocalization.upload, style: Theme.of(context).textTheme.bodyLarge,),
                ),
                NavigationRailDestination(
                  icon: Icon(IconManager.personAdd, size: AppSize.s24, color: Theme.of(context).colorScheme.onSecondary),
                  selectedIcon: Icon(IconManager.personAddFill, size: AppSize.s24, color: Theme.of(context).colorScheme.tertiary),
                  label: Text(textLocalization.userManager, style: Theme.of(context).textTheme.bodyLarge),
                ),
                NavigationRailDestination(
                  icon:Icon(IconManager.person, size: AppSize.s24, color: Theme.of(context).colorScheme.onSecondary),
                  selectedIcon: Icon(IconManager.personFill, size: AppSize.s24, color: Theme.of(context).colorScheme.tertiary),
                  label: Text(textLocalization.profile, style: Theme.of(context).textTheme.bodyLarge),
                )

              ],
              onDestinationSelected: onDestinationSelected,
              labelType: NavigationRailLabelType.all,
            ),
            VerticalDivider(
              thickness: AppSize.s1,
              width: AppSize.s1,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            Expanded(
              child: navigationShell,
            )
          ],
        ));
  }
}