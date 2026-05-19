import 'dart:convert';
import 'package:equatable/equatable.dart';

class StoreModel extends Equatable {
  final String id;
  final DateTime? createdAt;
  const StoreModel({required this.id, this.createdAt});

  Map<String, dynamic> toMap() => {'id': id, 'createdAt': createdAt?.toIso8601String()};
  factory StoreModel.fromMap(Map<String, dynamic> map) => StoreModel(id: map['id'] ?? '', createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null);
  String toJson() => json.encode(toMap());
  factory StoreModel.fromJson(String source) => StoreModel.fromMap(json.decode(source));

  @override
  List<Object?> get props => [id, createdAt];
}
