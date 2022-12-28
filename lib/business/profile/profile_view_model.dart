import 'package:structure_demo/business/shared/crud/crud_view_model.dart';
import 'package:structure_demo/models/user/user_model.dart';

class ProfileViewModel extends CrudViewModel<UserModel> {
  static const String _api = 'user';

  ProfileViewModel()
      : super(
          api: _api,
          convertor: (map) => UserModel.fromMap(map),
        );
}
