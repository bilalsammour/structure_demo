import 'package:flutter/material.dart';
import 'package:structure_demo/business/shared/view_model_exception.dart';
import 'package:structure_demo/generated/l10n.dart';
import 'package:structure_demo/utils/navigation_manager.dart';
import 'package:structure_demo/view/resources/app_resources.dart';
import 'package:structure_demo/view/screens/profile/profile_screen.dart';
import 'package:structure_demo/view/screens/user/user_section_item.dart';
import 'package:structure_demo/view/utils/error_manager.dart';

class UserSection extends StatelessWidget {
  const UserSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimensions.mainSpace,
        ),
        child: Column(
          children: [
            UserSectionItem(
              label: S.current.profile,
              onPressed: () => NavigationManager.push(
                context,
                const ProfileScreen(),
              ),
            ),
            const Divider(),
            UserSectionItem(
              label: S.current.error,
              onPressed: () => _go(context),
            ),
          ],
        ),
      );

  void _go(BuildContext context) {
    try {
      _anything();
    } on ViewModelException catch (e) {
      ErrorManager.show(
        context: context,
        error: e.error ?? '',
      );
    }
  }

  void _anything() {
    throw ViewModelException(error: S.current.sampleError);
  }
}
