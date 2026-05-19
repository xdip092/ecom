import 'package:equatable/equatable.dart';

class AddressModel extends Equatable {
  final String id;
  const AddressModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory AddressModel.fromMap(Map<String, dynamic> map) => AddressModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
