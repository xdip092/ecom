import 'package:equatable/equatable.dart';

class SearchResultModel extends Equatable {
  final String id;
  const SearchResultModel({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory SearchResultModel.fromMap(Map<String, dynamic> map) => SearchResultModel(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
