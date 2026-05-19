import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  const Product({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory Product.fromMap(Map<String, dynamic> map) => Product(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
