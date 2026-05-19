import 'package:equatable/equatable.dart';

class Offer extends Equatable {
  final String id;
  const Offer({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory Offer.fromMap(Map<String, dynamic> map) => Offer(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
