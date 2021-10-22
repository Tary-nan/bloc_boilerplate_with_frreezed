import 'package:architecture_bloc/src/features/Tabs/tabs.dart';
import 'package:architecture_bloc/src/features/features.dart';
import 'package:architecture_bloc/src/screens/todos/screen.dart';
import 'package:architecture_bloc/src/widgets/button_filter.dart';
import 'package:architecture_bloc/src/widgets/delete_todo_snackbar.dart';
import 'package:architecture_bloc/src/widgets/extra_actions.dart';
import 'package:architecture_bloc/src/widgets/loading_indicator.dart';
import 'package:architecture_bloc/src/widgets/stats.dart';
import 'package:architecture_bloc/src/widgets/todo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, AppTab>(
      builder: (context, activeTab) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Todo'),
            actions:  [
               FilterButton(visible: activeTab == AppTab.todos),
              const ExtraActions(),
            ],
          ),
          body:
              activeTab == AppTab.todos ? const FilteredTodos() : const Stats(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, 'addTodo');
            },
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: TabSelector(
            activeTab: activeTab,
            onTabSelected: (tab) {
              BlocProvider.of<TabBloc>(context).add(TabEventUpdated(tab));
            },
          ),
        );
      },
    );
  }
}

class TabSelector extends StatelessWidget {
  final AppTab activeTab;
  final Function(AppTab) onTabSelected;

  const TabSelector({
    Key? key,
    required this.activeTab,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: AppTab.values.indexOf(activeTab),
      onTap: (index) => onTabSelected(AppTab.values[index]),
      items: AppTab.values.map((tab) {
        return BottomNavigationBarItem(
          icon: Icon(
            tab == AppTab.todos ? Icons.list : Icons.show_chart,
            // key: tab == AppTab.todos
            // ? ArchSampleKeys.todoTab
            // : ArchSampleKeys.statsTab,
          ),
          label: tab == AppTab.stats ? "stats" : "todos",
        );
      }).toList(),
    );
  }
}


class FilteredTodos extends StatelessWidget {
  const FilteredTodos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<FilteredBloc, FilteredState>(
      builder: (context, state) {
        if (state is Loading) {
          return const LoadingIndicator();
        } else if (state is LoadedSucces) {
          final todos = state.todos;
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (BuildContext context, int index) {
              final todo = todos[index];
              return TodoItem(
                todo: todo,
                onDismissed: (direction) {
                  BlocProvider.of<TodoBloc>(context).add(TodoEvent.deleted(todo));
                  ScaffoldMessenger.of(context).showSnackBar(
                    DeleteTodoSnackBar(
                      todo: todo,
                      onUndo: () => BlocProvider.of<TodoBloc>(context)
                          .add(TodoEvent.added(todo)),
                    ),
                  );
                },
                onTap: () async {
                  final removedTodo = await Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) {
                      return DetailsScreen(id: todo.id);
                    }),
                  );
                  if (removedTodo != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      DeleteTodoSnackBar(
                        todo: todo,
                        onUndo: () => BlocProvider.of<TodoBloc>(context)
                            .add(TodoEvent.added(todo)),
                      ),
                    );
                  }
                },
                onCheckboxChanged: (_) {
                  BlocProvider.of<TodoBloc>(context).add(
                    TodoEvent.updated(todo.copyWith(complet: !todo.complete)),
                  );
                },
              );
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}


