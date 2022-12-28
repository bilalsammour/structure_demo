import 'package:structure_demo/models/map_model.dart';
import 'package:structure_demo/models/shared/item_parent_model.dart';

class GeneralResponse extends MapModel {
  static const String errorKey = 'error';

  final String? error;
  final int statusCode;
  final Map<String, dynamic> map;

  GeneralResponse({
    required this.statusCode,
    required this.map,
  }) : error = map[errorKey];

  GeneralResponse.error(this.error)
      : statusCode = 0,
        map = {};

  bool hasError() => error != null;

  bool isEmptyError() => error == null;

  ItemParentModel toItem() => ItemParentModel.fromMap(map);
}
