import 'package:go_router/go_router.dart';
import 'package:tolkien/presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', name: HomeScreen.name, builder: (context, state) => const HomeScreen(),),
    GoRoute(path: '/book-screen', name: BookScreen.name, builder: (context, state) => const BookScreen(),),
    GoRoute(path: '/movie-screen', name: MovieScreen.name, builder: (context, state) => const MovieScreen(),),
    GoRoute(path: '/character-screen', name: CharacterScreen.name, builder: (context, state) => const CharacterScreen(),),
    GoRoute(path: '/quotes-screen', name: QuotesScreen.name, builder: (context, state) => const QuotesScreen(),),
  ]
);