class Dish {
  final String id;
  final String imagePath;
  final String name;
  final String description;
  final int price;

  Dish({
    required this.id,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'imagePath': imagePath,
    'name': name,
    'description': description,
    'price': price,
  };

  factory Dish.fromMap(Map<String, dynamic> map) => Dish(
    id: map['id'],
    name: map['name'],
    imagePath: map['imagePath'],
    description: map['description'],
    price: map['price'],
  );

  @override
  String toString() =>
      'Dish(id: $id, imagePath: $imagePath, name: $name, description: $description, price: $price)';
}
