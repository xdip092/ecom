import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  const UserModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
