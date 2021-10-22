import 'dart:io';

import 'package:architecture_bloc/src/screens/todos/home_screen.dart';
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
        // ArchSampleRoutes.addTodo: (context) {
        //   return AddEditScreen(
        //     key: ArchSampleKeys.addTodoScreen,
        //     onSave: (task, note) {
        //       BlocProvider.of<TodosBloc>(context).add(
        //         TodoAdded(Todo(task, note: note)),
        //       );
        //     },
        //     isEditing: false,
        //   );
        // },
      },
    );
  }
}
