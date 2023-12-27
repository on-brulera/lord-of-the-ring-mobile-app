
import 'package:flutter/material.dart';

final List<MenuItem> menuItems = [
  MenuItem(tittle: 'Books', description: 'J.R.R Tolkien books', icon: const Icon(Icons.book_online_outlined)),
  MenuItem(tittle: 'Movies', description: 'Famous adaptations', icon: const Icon(Icons.movie_creation_outlined)),
  MenuItem(tittle: 'Characters', description: 'Iconics actors and actress', icon: const Icon(Icons.personal_injury_outlined)),
  MenuItem(tittle: 'Quotes', description: 'Emotional words from people', icon: const Icon(Icons.quora_outlined)),
];


class MenuItem {
  final String tittle;
  final String description;
  final Icon icon;
  MenuItem({required this.tittle, required this.description, required this.icon});
}