import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final String id;
  const CategoryModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory CategoryModel.fromMap(Map<String, dynamic> map) => CategoryModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
