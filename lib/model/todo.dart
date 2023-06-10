import 'package:flutter/cupertino.dart';

class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  // list for todo items

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'orning Exercise', isDone: true),
      ToDo(id: '02', todoText: 'Morncenwining Exercise', isDone: true),
      ToDo(id: '03', todoText: 'cdiusf Exercise'),
      ToDo(id: '04', todoText: 'cdiusf Exercise'),
      ToDo(id: '05', todoText: 'cdiusf Exercise'),

    ];
  }
}
