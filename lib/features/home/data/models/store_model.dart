import 'package:equatable/equatable.dart';

class StoreModel extends Equatable {
  final String id;
  const StoreModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory StoreModel.fromMap(Map<String, dynamic> map) => StoreModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
