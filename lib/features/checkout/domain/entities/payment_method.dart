import 'package:equatable/equatable.dart';

class PaymentMethod extends Equatable {
  final String id;
  const PaymentMethod({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory PaymentMethod.fromMap(Map<String, dynamic> map) => PaymentMethod(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
