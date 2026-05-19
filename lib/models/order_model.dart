import 'dart:convert';
import 'package:equatable/equatable.dart';

class OrderModel extends Equatable {
  final String id;
  final DateTime? createdAt;
  const OrderModel({required this.id, this.createdAt});

  Map<String, dynamic> toMap() => {'id': id, 'createdAt': createdAt?.toIso8601String()};
  factory OrderModel.fromMap(Map<String, dynamic> map) => OrderModel(id: map['id'] ?? '', createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null);
  String toJson() => json.encode(toMap());
  factory OrderModel.fromJson(String source) => OrderModel.fromMap(json.decode(source));

  @override
  List<Object?> get props => [id, createdAt];
}
