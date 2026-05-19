import 'package:equatable/equatable.dart';

class WishlistItemModel extends Equatable {
  final String id;
  const WishlistItemModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory WishlistItemModel.fromMap(Map<String, dynamic> map) => WishlistItemModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
