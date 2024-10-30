import 'package:flutter/material.dart';

class ProfileMenuItemWidget extends StatefulWidget {
  const ProfileMenuItemWidget({
        super.key, 
        required Map<String, dynamic> menuItem,
  }) : _menuItem = menuItem;

  final Map<String, dynamic> _menuItem;

  @override
  State<ProfileMenuItemWidget> createState() => _ProfileMenuItemWidgetState(
      title: _menuItem["title"],
      icon: _menuItem["icon"],
      route: _menuItem['route']
  );
}

class _ProfileMenuItemWidgetState extends State<ProfileMenuItemWidget> {

  final String title;

  final IconData icon;

  final String route;

  _ProfileMenuItemWidgetState({
    required this.title,
    required this.icon,
    required this.route
  });
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFEEEFEF),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10,),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
