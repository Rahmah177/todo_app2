import 'package:tasker_app/todo_provider.dart';

class Todo {
  int? id; 
  String name;
  int date;
  bool isChecked;

  
  Todo({
    this.id, 
    required this.name,
    required this.date,
    required this.isChecked,
  });

  
  Todo.fromMap(Map<String, dynamic> map)
      : id = map[columnId],
        name = map[columnName],
        date = map[columnDate],
        isChecked = map[columnIsChecked] == 0 ? false : true;

  
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (id != null) map[columnId] = id; 
    map[columnName] = name;
    map[columnDate] = date;
    map[columnIsChecked] = isChecked ? 1 : 0;
    return map;
  }
}
