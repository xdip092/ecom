import 'package:equatable/equatable.dart';

class PaymentMethodModel extends Equatable {
  final String id;
  const PaymentMethodModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory PaymentMethodModel.fromMap(Map<String, dynamic> map) => PaymentMethodModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
