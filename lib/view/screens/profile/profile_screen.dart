import 'package:flutter/material.dart';
import 'package:structure_demo/business/profile/profile_view_model.dart';
import 'package:structure_demo/generated/l10n.dart';
import 'package:structure_demo/models/user/user_model.dart';
import 'package:structure_demo/view/builders/crud_builder.dart';
import 'package:structure_demo/view/screens/profile/profile_content.dart';
import 'package:structure_demo/view/shared_widgets/templates/main_template.dart';
import 'package:structure_demo/view/utils/error_manager.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) => MainTemplate(
        appBar: AppBar(
          title: Text(
            S.current.profile,
          ),
        ),
        child: CrudBuilder<ProfileViewModel, UserModel>(
          builder: (value) => ProfileContent(
            item: value ?? const UserModel(),
            onError: (error) async {
              await ErrorManager.show(
                context: context,
                error: error,
              );
            },
          ),
        ),
      );
}
