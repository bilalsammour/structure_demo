import 'package:structure_demo/business/shared/crud/crud_items_view_model.dart';
import 'package:structure_demo/models/shared/id_name_model.dart';

class NotesViewModel extends CrudItemsViewModel<IdNameModel> {
  static const String _api = 'notes';

  NotesViewModel()
      : super(
          api: _api,
          convertor: (map) => IdNameModel.fromMap(map),
        );
}
