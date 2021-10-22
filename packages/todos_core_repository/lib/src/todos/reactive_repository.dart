// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'dart:async';
import 'dart:core';

import 'todo_entity.dart';

abstract class ReactiveTodosRepository {
  Future<void> addNewTodo(TodoEntity todo);

  Future<void> deleteTodo(List<String> idList);

  Stream<List<TodoEntity>> todos();

  Future<void> updateTodo(TodoEntity todo);
}
