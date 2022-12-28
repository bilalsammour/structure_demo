import 'package:structure_demo/models/map_model.dart';

class ItemParentModel extends MapModel {
  final int status;
  final String errorKey;
  final String error;
  final Map<String, dynamic> data;

  const ItemParentModel({
    this.status = 0,
    this.errorKey = '',
    this.error = '',
    this.data = const {},
  });

  factory ItemParentModel.fromMap(Map<String, dynamic> map) => ItemParentModel(
        status: (map['status'] ?? 0) as int,
        errorKey: (map['error_key'] ?? '') as String,
        error: (map['error'] ?? '') as String,
        data: Map<String, dynamic>.from(
          (map['data'] ?? const <Map<String, dynamic>>{})
              as Map<String, dynamic>,
        ),
      );

  T getParsedResults<T>(
    T Function(Map<String, dynamic> map) convertor,
  ) =>
      convertor.call(data);
}
