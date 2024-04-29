class Fruit {
  final String name;
  final String family;
  final String order;
  final String genus;
  final Map<String, dynamic> nutritions;

  Fruit({
    required this.name,
    required this.family,
    required this.order,
    required this.genus,
    required this.nutritions,
  });

  factory Fruit.fromJson(Map<String, dynamic> json) {
    return Fruit(
      name: json['name'],
      family: json['family'],
      order: json['order'],
      genus: json['genus'],
      nutritions: json['nutritions'],
    );
  }
}
