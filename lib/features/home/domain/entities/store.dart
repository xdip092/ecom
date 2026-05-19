import 'package:equatable/equatable.dart';

class Store extends Equatable {
  final String id;
  const Store({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory Store.fromMap(Map<String, dynamic> map) => Store(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
