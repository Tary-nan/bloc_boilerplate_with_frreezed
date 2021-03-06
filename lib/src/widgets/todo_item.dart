import 'package:architecture_bloc/src/features/features.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final DismissDirectionCallback onDismissed;
  final GestureTapCallback onTap;
  final ValueChanged<bool?>? onCheckboxChanged;
  final Todo? todo;

  const TodoItem({
    Key? key,
    required this.onDismissed,
    required this.onTap,
    required this.onCheckboxChanged,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(todo!.id),
      onDismissed: onDismissed,
      child: ListTile(
        onTap: onTap,
        leading: Checkbox(
          value: todo!.complete,
          onChanged: onCheckboxChanged,
        ),
        title: Hero(
          tag: '${todo!.id}__heroTag',
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              todo!.task,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        subtitle: todo!.note.isNotEmpty
            ? Text(
                todo!.note,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle1,
              )
            : null,
      ),
    );
  }
}
