// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Todo {
  String todoMessage;
  String isComplete;
  int id;
  Todo({
    required this.todoMessage,
    required this.isComplete,
    required this.id,
  });
  

  Todo copyWith({
    String? todoMessage,
    String? isComplete,
    int? id,
  }) {
    return Todo(
      todoMessage: todoMessage ?? this.todoMessage,
      isComplete: isComplete ?? this.isComplete,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'todoMessage': todoMessage,
      'isComplete': isComplete,
      'id': id,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      todoMessage: map['todoMessage'] as String,
      isComplete: map['isComplete'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Todo(todoMessage: $todoMessage, isComplete: $isComplete, id: $id)';

  @override
  bool operator ==(covariant Todo other) {
    if (identical(this, other)) return true;
  
    return 
      other.todoMessage == todoMessage &&
      other.isComplete == isComplete &&
      other.id == id;
  }

  @override
  int get hashCode => todoMessage.hashCode ^ isComplete.hashCode ^ id.hashCode;
}
