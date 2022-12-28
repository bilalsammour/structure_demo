import 'package:flutter/material.dart';
import 'package:structure_demo/models/shared/id_name_model.dart';
import 'package:structure_demo/view/resources/app_resources.dart';

class NoteItem extends StatelessWidget {
  final IdNameModel item;

  const NoteItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.mainSpace,
          vertical: AppDimensions.quarterSpace,
        ),
        child: Card(
          elevation: AppDimensions.largeElevation,
          child: ListTile(
            title: Text(
              item.name,
            ),
          ),
        ),
      );
}
