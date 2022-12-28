import 'package:flutter/material.dart';
import 'package:structure_demo/business/notes/notes_view_model.dart';
import 'package:provider/provider.dart';
import 'package:structure_demo/business/shared/view_model_exception.dart';
import 'package:structure_demo/generated/l10n.dart';
import 'package:structure_demo/view/resources/app_resources.dart';
import 'package:structure_demo/view/screens/dashboard/notes_items.dart';
import 'package:structure_demo/view/shared_widgets/app_consumer.dart';
import 'package:structure_demo/view/utils/dialogs_manager.dart';

class DashboardSection extends StatefulWidget {
  const DashboardSection({super.key});

  @override
  State<DashboardSection> createState() => _DashboardSectionState();
}

class _DashboardSectionState extends State<DashboardSection> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      () async {
        try {
          await context.read<NotesViewModel>().retrieve().then((_) => {});
        } on ViewModelException catch (e) {
          await DialogsManager.showOkDialog(
            context: context,
            message: e.toString(),
          );
        } catch (_) {
          await DialogsManager.showOkDialog(
            context: context,
            message: S.current.somethingWentWrong,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) => AppConsumer<NotesViewModel>(
        builder: () => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.mainSpace,
          ),
          child: NotesItems(items: context.read<NotesViewModel>().items),
        ),
      );
}
