import 'package:architecture_bloc/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreen extends StatelessWidget {
  final String id;

  const DetailsScreen({Key? key, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        final todo = (state as Success)
            .todos
            .firstWhere((todo) => todo.id == id,);
        // final localizations = ArchSampleLocalizations.of(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text('detail screen'),
            actions: [
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  BlocProvider.of<TodoBloc>(context).add(TodoEvent.deleted(todo));
                  Navigator.pop(context, todo);
                },
              )
            ],
          ),
          body:Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Checkbox(
                                value: todo.complete,
                                onChanged: (_) {
                                  BlocProvider.of<TodoBloc>(context).add(
                                    TodoEvent.updated(
                                      todo.copyWith(complet: !todo.complete),
                                    ),
                                  );
                                }),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Hero(
                                  tag: '${todo.id}__heroTag',
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      bottom: 16.0,
                                    ),
                                    child: Text(
                                      todo.task,
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                  ),
                                ),
                                Text(
                                  todo.note,
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.edit),
            onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return AddEditScreen(
                    //         onSave: (task, note) {
                    //           BlocProvider.of<TodoBloc>(context).add(
                    //             TodoEvent.updated(
                    //               todo.copyWith(task: task, note: note),
                    //             ),
                    //           );
                    //         },
                    //         isEditing: true,
                    //         todo: todo,
                    //       );
                    //     },
                    //   ),
                    // );
                  },
          ),
        );
      },
    );
  }
}