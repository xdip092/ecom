import 'package:equatable/equatable.dart';

class WishlistItem extends Equatable {
  final String id;
  const WishlistItem({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory WishlistItem.fromMap(Map<String, dynamic> map) => WishlistItem(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
