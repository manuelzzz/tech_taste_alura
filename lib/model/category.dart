class Category {
  final String id;
  final String name;

  Category({required this.id, required this.name});

  Map<String, dynamic> toMap() => {'id': id, 'name': name};

  factory Category.fromMap(Map<String, dynamic> map) =>
      Category(id: map['id'], name: map['name']);

  @override
  String toString() => 'Category(id: $id, name: $name)';
}
