import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/theme/themeProvider.dart';
import 'package:provider/provider.dart';

class MySettingsPage extends StatelessWidget {
  const MySettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Align(alignment: Alignment.center, child: Text('Settings')),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.only(left: 25, top: 10, right: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark Mode',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                Switch(
                    value: Provider.of<ThemeProvider>(context, )
                        .isDarkMode,
                    onChanged: (value) {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme();
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
