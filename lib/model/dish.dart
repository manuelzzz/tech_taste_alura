class Dish {
  final String id;
  final String imagePath;
  final String description;
  final int price;

  Dish({
    required this.id,
    required this.imagePath,
    required this.description,
    required this.price,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'imagePath': imagePath,
    'description': description,
    'price': price,
  };

  factory Dish.fromMap(Map<String, dynamic> map) => Dish(
    id: map['id'],
    imagePath: map['imagePath'],
    description: map['description'],
    price: map['price'],
  );

  @override
  String toString() =>
     'Dish(id: $id, imagePath: $imagePath, description: $description, price: $price)';
  
}
