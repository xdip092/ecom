import 'dart:convert';
import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final String id;
  final DateTime? createdAt;
  const CategoryModel({required this.id, this.createdAt});

  Map<String, dynamic> toMap() => {'id': id, 'createdAt': createdAt?.toIso8601String()};
  factory CategoryModel.fromMap(Map<String, dynamic> map) => CategoryModel(id: map['id'] ?? '', createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null);
  String toJson() => json.encode(toMap());
  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source));

  @override
  List<Object?> get props => [id, createdAt];
}
