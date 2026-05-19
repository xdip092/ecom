import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  final String id;
  const Cart({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory Cart.fromMap(Map<String, dynamic> map) => Cart(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
