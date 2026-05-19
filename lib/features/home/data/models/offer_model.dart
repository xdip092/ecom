import 'package:equatable/equatable.dart';

class OfferModel extends Equatable {
  final String id;
  const OfferModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory OfferModel.fromMap(Map<String, dynamic> map) => OfferModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
