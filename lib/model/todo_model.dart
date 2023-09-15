class ToDo{

  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false
});

  static List<ToDo> toDoList(){
    return[
      ToDo(id: '01', todoText: 'todoText1', isDone: true),
      ToDo(id: '02', todoText: 'todoText2', isDone: true),
      ToDo(id: '03', todoText: 'todoText3'),
     
    ];
  }

}