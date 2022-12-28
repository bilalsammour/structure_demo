import 'package:flutter/material.dart';
import 'package:structure_demo/models/shared/id_name_model.dart';
import 'package:structure_demo/view/screens/dashboard/note_item.dart';
import 'package:structure_demo/view/shared_widgets/list/generic_list.dart';

class NotesItems extends StatelessWidget {
  final List<IdNameModel> items;

  const NotesItems({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) => GenericList(
        items: items,
        itemBuilder: (_, index) => NoteItem(
          item: items[index],
        ),
      );
}
