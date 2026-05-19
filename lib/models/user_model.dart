import 'dart:convert';
import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final DateTime? createdAt;
  const UserModel({required this.id, this.createdAt});

  Map<String, dynamic> toMap() => {'id': id, 'createdAt': createdAt?.toIso8601String()};
  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(id: map['id'] ?? '', createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null);
  String toJson() => json.encode(toMap());
  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  List<Object?> get props => [id, createdAt];
}
