import 'package:equatable/equatable.dart';

class CartItemModel extends Equatable {
  final String id;
  const CartItemModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory CartItemModel.fromMap(Map<String, dynamic> map) => CartItemModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
