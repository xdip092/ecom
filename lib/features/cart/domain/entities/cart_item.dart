import 'package:equatable/equatable.dart';

class CartItem extends Equatable {
  final String id;
  const CartItem({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory CartItem.fromMap(Map<String, dynamic> map) => CartItem(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
