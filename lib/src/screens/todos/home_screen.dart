import 'package:architecture_bloc/src/features/Tabs/tabs.dart';
import 'package:architecture_bloc/src/features/features.dart';
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
            actions: const [
              // FilterButton(visible: activeTab == AppTab.todos),
              // ExtraActions(),
            ],
          ),
          body:
              activeTab == AppTab.todos ? const FilteredTodos() : const Stats(),
          floatingActionButton: FloatingActionButton(
            // key: ArchSampleKeys.addTodoFab,
            onPressed: () {
              // Navigator.pushNamed(context, ArchSampleRoutes.addTodo);
            },
            child: const Icon(Icons.add),
            // tooltip: ArchSampleLocalizations.of(context).addTodo,
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
      // key: ArchSampleKeys.tabs,
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

    final todos = context
        .select<TodoBloc, void>((bloc){
          print(bloc.state);
        });
    // final todo = Todo(id: '1', note: 'firts test', task: ';ake app todo with Bloc pattern', complet: false);
    // context.read<TodoBloc>().add(Added(todo));

    return const Center(child: Text('Todos'));
  }
}

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Stats'));
  }
}
