import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String id;
  const ProductModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory ProductModel.fromMap(Map<String, dynamic> map) => ProductModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
