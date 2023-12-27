
import 'package:flutter/material.dart';
import 'package:tolkien/presentation/screens/screens.dart';

final List<MenuItem> menuItems = [
  MenuItem( tittle: 'Books', description: 'J.R.R Tolkien books', icon: const Icon(Icons.book_online_outlined), url: BookScreen.name),
  MenuItem(tittle: 'Movies', description: 'Famous adaptations films', icon: const Icon(Icons.movie_creation_outlined), url: MovieScreen.name),
  MenuItem(tittle: 'Characters', description: 'Iconics actors and actress', icon: const Icon(Icons.personal_injury_outlined), url: CharacterScreen.name),
  MenuItem(tittle: 'Quotes', description: 'Emotional words from people', icon: const Icon(Icons.quora_outlined), url: QuotesScreen.name),
];


class MenuItem {
  final String tittle;
  final String description;
  final Icon icon;
  final String url;
  MenuItem({required this.tittle, required this.description, required this.icon, required this.url });
}