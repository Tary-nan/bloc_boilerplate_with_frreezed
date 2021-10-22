import 'package:architecture_bloc/src/screens/todos/home_screen.dart';
import 'package:architecture_bloc/src/screens/todos/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/features.dart';

class TodosApp extends StatelessWidget {
  const TodosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<TabBloc>(
                create: (context) => TabBloc(),
              ),
              BlocProvider<FilteredBloc>(
                create: (context) => FilteredBloc(
                  todoBloc: BlocProvider.of<TodoBloc>(context),
                ),
              ),
              BlocProvider<StatBloc>(
                create: (context) => StatBloc(
                  BlocProvider.of<TodoBloc>(context),
                ),
              ),
            ],
            child: const HomeScreen(),
          );
        },
        'addTodo': (context) {
          return AddEditScreen(
            onSave: (task, note) {
              BlocProvider.of<TodoBloc>(context).add(
                TodoEvent.added(Todo(id: DateTime.now().toIso8601String(), note: note, task: task, complet: false)),
              );
            },
            isEditing: false,
          );
        },
      },
    );
  }
}
