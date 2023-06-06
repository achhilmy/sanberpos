class PostCategory {
  final int? id;
  final String? name;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? userId;

  PostCategory(
      {this.id, this.name, this.createdAt, this.updatedAt, this.userId});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'user_id': userId
    };
  }
}
