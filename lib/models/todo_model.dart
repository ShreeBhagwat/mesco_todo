class Todo {
  final String title;
  final String description;
  final DateTime createdAt = DateTime.now();

  Todo({
    required this.title,
    required this.description,
  });
}

List<Todo> todosList = [];
