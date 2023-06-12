class CategoryListModel {
  final int? id;
  final String? name;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? userId;

  const CategoryListModel({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.userId,
  });

  factory CategoryListModel.fromJson(Map<String, dynamic> json) {
    return CategoryListModel(
      id: json["id"],
      name: json["name"],
      createdAt: DateTime.parse(json["created_at"]),
      updatedAt: DateTime.parse(json["updated_at"]),
      userId: json["user_id"],
    );
  }
}
