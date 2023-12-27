import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tolkien/config/menu/app_menu.dart';

class HomeScreen extends StatelessWidget {

  static String name = 'menu-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: _MenuView());
  }
}

class _MenuView extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,      
      children: [
        ...menuItems.map((item) {
          return ListTile(
            title: Text(item.tittle),
            subtitle: Text(item.description),
            leading: item.icon,
            trailing: const Icon(Icons.add_circle),            
            onTap: () => context.pushNamed(item.url),
          );
        })
      ],
    );
  }
}