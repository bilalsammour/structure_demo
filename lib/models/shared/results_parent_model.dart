import 'package:structure_demo/models/map_model.dart';

class ResultsParentModel extends MapModel {
  final int status;
  final String errorKey;
  final String error;
  final List<Map<String, dynamic>> data;

  const ResultsParentModel({
    this.status = 0,
    this.errorKey = '',
    this.error = '',
    this.data = const [],
  });

  factory ResultsParentModel.fromMap(Map<String, dynamic> map) =>
      ResultsParentModel(
        status: (map['status'] ?? 0) as int,
        errorKey: (map['error_key'] ?? '') as String,
        error: (map['error'] ?? '') as String,
        data: List<Map<String, dynamic>>.from(
          (map['data'] as List<dynamic>).map(
            (e) => e as Map<String, dynamic>,
          ),
        ),
      );

  List<T> getParsedResults<T>(
    T Function(Map<String, dynamic> map) convertor,
  ) =>
      data
          .map(
            (e) => convertor.call(e),
          )
          .toList();
}
