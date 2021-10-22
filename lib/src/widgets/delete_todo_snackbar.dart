import 'package:architecture_bloc/src/features/features.dart';
import 'package:flutter/material.dart';

class DeleteTodoSnackBar extends SnackBar {

  DeleteTodoSnackBar({
    Key? key,
    required Todo todo,
    required VoidCallback onUndo,
  }) : super(
          key: key,
          content: Text(
            todo.task,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          duration: const Duration(seconds: 2),
          action: SnackBarAction(
            label: 'undo',
            onPressed: onUndo,
          ),
        );
}
