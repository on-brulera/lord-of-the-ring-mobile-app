import 'package:flutter/material.dart';
class BookScreen extends StatelessWidget {

  static String name = 'book-screen';

  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(      
      color: Colors.white,
      child: Center(
        child: Text('HOLA'),
      ),
    );
  }
}