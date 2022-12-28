import 'package:structure_demo/models/map_model.dart';

class UserModel extends MapModel {
  final String id;
  final String firstName;
  final String lastName;
  final String email;

  const UserModel({
    this.id = '',
    this.firstName = '',
    this.lastName = '',
    this.email = '',
  });

  UserModel copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
  }) =>
      UserModel(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
      );

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
      };

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
        id: (map['id'] ?? '') as String,
        firstName: (map['firstName'] ?? '') as String,
        lastName: (map['lastName'] ?? '') as String,
        email: (map['email'] ?? '') as String,
      );

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) {
      return true;
    }

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
