import 'dart:convert';
import 'package:equatable/equatable.dart';

class AddressModel extends Equatable {
  final String id;
  final DateTime? createdAt;
  const AddressModel({required this.id, this.createdAt});

  Map<String, dynamic> toMap() => {'id': id, 'createdAt': createdAt?.toIso8601String()};
  factory AddressModel.fromMap(Map<String, dynamic> map) => AddressModel(id: map['id'] ?? '', createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null);
  String toJson() => json.encode(toMap());
  factory AddressModel.fromJson(String source) => AddressModel.fromMap(json.decode(source));

  @override
  List<Object?> get props => [id, createdAt];
}
