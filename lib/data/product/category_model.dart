class CategoryProductModel {
  final int? id;
  final String? name;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? userId;

  CategoryProductModel({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.userId,
  });

  factory CategoryProductModel.fromJson(Map<String, dynamic> json) {
    return CategoryProductModel(
      id: json["id"],
      name: json["name"],
      createdAt: DateTime.parse(json["created_at"]),
      updatedAt: DateTime.parse(json["updated_at"]),
      userId: json["user_id"],
    );
  }
}
