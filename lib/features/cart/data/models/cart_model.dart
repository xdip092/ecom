import 'package:equatable/equatable.dart';

class CartModel extends Equatable {
  final String id;
  const CartModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory CartModel.fromMap(Map<String, dynamic> map) => CartModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
