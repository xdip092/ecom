import 'package:equatable/equatable.dart';

class UserProfileModel extends Equatable {
  final String id;
  const UserProfileModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory UserProfileModel.fromMap(Map<String, dynamic> map) => UserProfileModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
