import 'package:equatable/equatable.dart';

class UserProfile extends Equatable {
  final String id;
  const UserProfile({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory UserProfile.fromMap(Map<String, dynamic> map) => UserProfile(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
