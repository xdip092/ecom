import 'dart:convert';
import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String id;
  final DateTime? createdAt;
  const ProductModel({required this.id, this.createdAt});

  Map<String, dynamic> toMap() => {'id': id, 'createdAt': createdAt?.toIso8601String()};
  factory ProductModel.fromMap(Map<String, dynamic> map) => ProductModel(id: map['id'] ?? '', createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null);
  String toJson() => json.encode(toMap());
  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

  @override
  List<Object?> get props => [id, createdAt];
}
