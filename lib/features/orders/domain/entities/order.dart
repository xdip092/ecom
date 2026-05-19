import 'package:equatable/equatable.dart';

class Order extends Equatable {
  final String id;
  const Order({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory Order.fromMap(Map<String, dynamic> map) => Order(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
