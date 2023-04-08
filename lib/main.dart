import 'package:cubit_study/presentation/router.dart';
import 'package:flutter/material.dart';

void main() => runApp(TodoApp(
      router: AppRouter(),
    ));

class TodoApp extends StatelessWidget {
  const TodoApp({
    super.key,
    required this.router,
  });

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
    );
  }
}
