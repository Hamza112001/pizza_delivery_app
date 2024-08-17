import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/components/my_drawe_tile.dart';
import 'package:pizza_delivery_app/components/my_settings_page.dart';
import 'package:pizza_delivery_app/services/auth/auth_service.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  void logOut() async {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 42,
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
          MyDraweTile(
              text: 'H O M E ',
              icon: Icons.home,
              onTap: () {
                Navigator.pop(context);
              }),
          MyDraweTile(
              text: 'S E T T I N G S ',
              icon: Icons.settings,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MySettingsPage(),
                    ));
              }),
          const SizedBox(
            height: 400,
          ),
          MyDraweTile(text: 'L O G O U T  ', icon: Icons.logout, onTap: logOut),
          //home list tile
          //setting list tile
          //logout
        ],
      ),
    );
  }
}
