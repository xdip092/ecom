import 'dart:convert';
import 'package:equatable/equatable.dart';

class OfferModel extends Equatable {
  final String id;
  final DateTime? createdAt;
  const OfferModel({required this.id, this.createdAt});

  Map<String, dynamic> toMap() => {'id': id, 'createdAt': createdAt?.toIso8601String()};
  factory OfferModel.fromMap(Map<String, dynamic> map) => OfferModel(id: map['id'] ?? '', createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null);
  String toJson() => json.encode(toMap());
  factory OfferModel.fromJson(String source) => OfferModel.fromMap(json.decode(source));

  @override
  List<Object?> get props => [id, createdAt];
}
