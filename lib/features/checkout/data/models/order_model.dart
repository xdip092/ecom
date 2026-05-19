import 'package:equatable/equatable.dart';

class OrderModel extends Equatable {
  final String id;
  const OrderModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory OrderModel.fromMap(Map<String, dynamic> map) => OrderModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
