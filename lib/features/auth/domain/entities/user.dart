import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  const User({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory User.fromMap(Map<String, dynamic> map) => User(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
