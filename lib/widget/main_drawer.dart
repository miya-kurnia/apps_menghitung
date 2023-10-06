import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        DrawerHeader(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Row(children: [
            Icon(
              Icons.calculate ,
              size: 48,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 18),
            Text('Selamat Mencoba',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.primary))
          ]),
        ),
        ListTile(
          onTap: () {
            onSelectScreen('categories');
          },
          leading: Icon(
            Icons.square_foot,
            size: 26,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          title: Text('Luas',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 24)),
        ),
        ListTile(
          onTap: () {
            onSelectScreen('meals');
          },
          leading: Icon(
            Icons.calculate_rounded,
            size: 26,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          title: Text('Volume',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 24)),
        ),
      ]),
    );
  }
}
