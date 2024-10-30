import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/src/feature/profile/presentation/widgets/profile_menu_items_widget.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final String title = 'Профиль';

  final List<Map<String, dynamic>> itemsMenu = [
    {
      'title': 'Настройки',
      'route': '/settings',
      'icon': Icons.settings,
    },
    {
      'title': 'Выход',
      'route': '/exit',
      'icon': Icons.exit_to_app,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль',
            style: TextStyle(color: Colors.white, fontSize: 25)),
        actions: const <Widget>[Icon(Icons.more_vert)],
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: CircleAvatar(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/images/no_photo.jpeg')
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Nikita Zakharov'),
            const SizedBox(height: 5),
            const Text('S0y6c@example.com',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (_, i) {
                    return ProfileMenuItemWidget(menuItem: itemsMenu[i]);
                  },
                  separatorBuilder: (_,i) => const SizedBox(height: 15),
                  shrinkWrap: true,
                  itemCount: itemsMenu.length
              ),
            )
          ],
        ),
      ),
    );
  }
}
