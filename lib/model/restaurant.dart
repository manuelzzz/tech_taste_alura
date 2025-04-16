class Restaurant {
  final String id;
  final String imagePath;
  final String name;
  final String description;
  final double stars;
  final int distance;
  final List<String> categories;

  Restaurant({
    required this.id,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.stars,
    required this.distance,
    required this.categories,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'imagePath': imagePath,
    'name': name,
    'description': description,
    'stars': stars,
    'distance': distance,
    'categories': categories,
  };

  factory Restaurant.fromMap(Map<String, dynamic> map) => Restaurant(
    id: map['id'],
    imagePath: map['imagePath'],
    name: map['name'],
    description: map['description'],
    stars: map['stars'],
    distance: map['distance'],
    categories: List<String>.from(map['categories']),
  );
}
