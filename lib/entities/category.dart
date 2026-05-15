class Category {
  final int id;
  final String name;
  final String imagePath;

  const Category({
    required this.id,
    required this.name,
    required this.imagePath,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as int,
      name: json['name'] as String,
      imagePath: json['image'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'image': imagePath};
  }
}
