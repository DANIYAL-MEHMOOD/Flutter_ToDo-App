
import 'package:flutter/material.dart';
import 'package:flutter_notes/constants/colors.dart';
import 'package:flutter_notes/model/todo_model.dart';

class  ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteitem;


  const ToDoItem({
    Key? key,
    required this.todo,
    this.onToDoChanged,
    this.onDeleteitem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: (){
          onToDoChanged(todo);
        },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
        tileColor: Colors.white,
        leading: Icon(
          color:tdBlue,
           todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
        ),
        title: Text(
        todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough: null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(
              onPressed: (){
                onDeleteitem(todo.id);
              },
              color: Colors.white,
              iconSize: 18,
              icon: Icon(Icons.delete)),
        )

      ),
    );
  }
}
