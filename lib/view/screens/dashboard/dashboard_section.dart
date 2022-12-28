import 'package:flutter/material.dart';
import 'package:structure_demo/business/notes/notes_view_model.dart';
import 'package:provider/provider.dart';
import 'package:structure_demo/view/resources/app_resources.dart';
import 'package:structure_demo/view/screens/dashboard/notes_items.dart';
import 'package:structure_demo/view/shared_widgets/app_consumer.dart';

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
      () => context.read<NotesViewModel>().retrieve(),
    );
  }

  @override
  Widget build(BuildContext context) => AppConsumer<NotesViewModel>(
        builder: (_, value) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.mainSpace,
          ),
          child: NotesItems(items: value.items),
        ),
      );
}
