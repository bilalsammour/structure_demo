import 'package:structure_demo/models/map_model.dart';

class IdNameModel extends MapModel {
  static const String idKey = 'id';
  static const String nameKey = 'name';

  final String id;
  final String name;

  const IdNameModel({
    this.id = '',
    this.name = '',
  });

  IdNameModel copyWith({
    String? id,
    String? name,
  }) =>
      IdNameModel(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        idKey: id,
        nameKey: name,
      };

  factory IdNameModel.fromMap(Map<String, dynamic> map) => IdNameModel(
        id: (map[idKey] ?? '') as String,
        name: (map[nameKey] ?? '') as String,
      );

  @override
  bool operator ==(covariant IdNameModel other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
