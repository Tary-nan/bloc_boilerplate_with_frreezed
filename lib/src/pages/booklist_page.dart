import 'package:architecture_bloc/src/app.dart';
import 'package:flutter/material.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: ElevatedButton(
              onPressed: () => router.pushNamed('/book-details-page'),
              child: const Text('Detail page'))),
    );
  }
}
