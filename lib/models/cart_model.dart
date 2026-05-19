import 'dart:convert';
import 'package:equatable/equatable.dart';

class CartModel extends Equatable {
  final String id;
  final DateTime? createdAt;
  const CartModel({required this.id, this.createdAt});

  Map<String, dynamic> toMap() => {'id': id, 'createdAt': createdAt?.toIso8601String()};
  factory CartModel.fromMap(Map<String, dynamic> map) => CartModel(id: map['id'] ?? '', createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null);
  String toJson() => json.encode(toMap());
  factory CartModel.fromJson(String source) => CartModel.fromMap(json.decode(source));

  @override
  List<Object?> get props => [id, createdAt];
}
