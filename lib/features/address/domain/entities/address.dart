import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final String id;
  const Address({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory Address.fromMap(Map<String, dynamic> map) => Address(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
