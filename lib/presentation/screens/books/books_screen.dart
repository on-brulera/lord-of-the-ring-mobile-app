import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tolkien/presentation/providers/books_provider.dart';

class BookScreen extends StatelessWidget {

  static String name = 'book-screen';

  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Libros de Tolkien'),
      ),
      body: const _BooksView(),
    );
  }
}

class _BooksView extends ConsumerStatefulWidget {
   const _BooksView();
  
  @override
  _BooksViewState createState()=> _BooksViewState();
    
}

class _BooksViewState extends ConsumerState<_BooksView>{

  @override
  void initState() {
    super.initState();
    ref.read(allBooksProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final books = ref.watch(allBooksProvider);

    if (books.isEmpty)return const CircularProgressIndicator();

    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        return ListTile(          
          title: Text(books[index].name),
          subtitle: Text(books[index].id),
        );
      },
    );
  }

}