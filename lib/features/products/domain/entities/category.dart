import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id;
  const Category({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory Category.fromMap(Map<String, dynamic> map) => Category(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
