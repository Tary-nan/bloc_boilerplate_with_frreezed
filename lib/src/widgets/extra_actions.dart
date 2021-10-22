import 'package:architecture_bloc/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


enum ExtraAction { toggleAllComplete, clearCompleted }

class ExtraActions extends StatelessWidget {
  const ExtraActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        if (state is Success) {
          bool allComplete =
              (BlocProvider.of<TodoBloc>(context).state as Success)
                  .todos
                  .every((todo) => todo.complete);
          return PopupMenuButton<ExtraAction>(
            onSelected: (action) {
              switch (action) {
                case ExtraAction.clearCompleted:
                  BlocProvider.of<TodoBloc>(context).add(ClearCompleted());
                  break;
                case ExtraAction.toggleAllComplete:
                  BlocProvider.of<TodoBloc>(context).add(ToggleAll());
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuItem<ExtraAction>>[
              PopupMenuItem<ExtraAction>(
                value: ExtraAction.toggleAllComplete,
                child: Text(
                  allComplete
                      ? 'markAllIncomplete'
                      : 'markAllComplete',
                ),
              ),
              const PopupMenuItem<ExtraAction>(
                value: ExtraAction.clearCompleted,
                child: Text('clearCompleted',
                ),
              ),
            ],
          );
        }
        return Container();
      },
    );
  }
}
