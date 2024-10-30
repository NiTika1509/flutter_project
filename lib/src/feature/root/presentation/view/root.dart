import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/core/design/constants/export.dart';
import 'package:flutter_project/core/route/router.gr.dart';


@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: foregroundColor,

      routes: [
        const CharacterListRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (BuildContext context, TabsRouter tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          backgroundColor: foregroundColor,
          iconSize: 35,
          fixedColor: primaryColor,
          unselectedItemColor: subColor,
          items: const [
            BottomNavigationBarItem(
                label: 'Хаус',
                icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              label: 'Профиль',
              icon: Icon(Icons.manage_accounts)
            ),
          ],
        );
      },
    );
  }
}
