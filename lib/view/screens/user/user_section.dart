import 'package:flutter/material.dart';
import 'package:structure_demo/generated/l10n.dart';
import 'package:structure_demo/utils/navigation_manager.dart';
import 'package:structure_demo/view/resources/app_resources.dart';
import 'package:structure_demo/view/screens/profile/profile_screen.dart';
import 'package:structure_demo/view/screens/user/user_section_item.dart';

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
              onPressed: () {},
            ),
          ],
        ),
      );
}
