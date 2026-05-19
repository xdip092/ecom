import 'dart:convert';
import 'package:equatable/equatable.dart';

class CartItemModel extends Equatable {
  final String id;
  final DateTime? createdAt;
  const CartItemModel({required this.id, this.createdAt});

  Map<String, dynamic> toMap() => {'id': id, 'createdAt': createdAt?.toIso8601String()};
  factory CartItemModel.fromMap(Map<String, dynamic> map) => CartItemModel(id: map['id'] ?? '', createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null);
  String toJson() => json.encode(toMap());
  factory CartItemModel.fromJson(String source) => CartItemModel.fromMap(json.decode(source));

  @override
  List<Object?> get props => [id, createdAt];
}
