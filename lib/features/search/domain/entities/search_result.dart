import 'package:equatable/equatable.dart';

class SearchResult extends Equatable {
  final String id;
  const SearchResult({required this.id});

  Map<String, dynamic> toMap() => {'id': id};
  factory SearchResult.fromMap(Map<String, dynamic> map) => SearchResult(id: map['id'] ?? '');

  @override
  List<Object?> get props => [id];
}
