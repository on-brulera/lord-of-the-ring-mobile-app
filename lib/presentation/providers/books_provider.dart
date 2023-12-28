

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tolkien/domain/domain.dart';
import 'package:tolkien/presentation/providers/books_repository_provider.dart';

final allBooksProvider = StateNotifierProvider<BooksNotifier,List<Book>>((ref){
  final fetchMoreBooks = ref.watch(bookRepositoryProvider).getBooks;
  return BooksNotifier(fetchMoreBooks: fetchMoreBooks);
});


typedef BookCallback = Future<List<Book>> Function ({int page});

class BooksNotifier extends StateNotifier<List<Book>>{

  int currentPage = 0;
  BookCallback fetchMoreBooks;

  BooksNotifier(
    {required this.fetchMoreBooks}
  ):super([]);

  Future<void> loadNextPage() async{
    currentPage++;
    final List<Book> books = await fetchMoreBooks(page: currentPage);
    state = [...state, ...books];
  }
}