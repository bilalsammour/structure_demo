import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:structure_demo/business/notes/notes_view_model.dart';
import 'package:structure_demo/business/profile/profile_view_model.dart';

class Providers {
  static List<SingleChildWidget> buildProviders(BuildContext context) => [
        ChangeNotifierProvider(
          create: (_) => ProfileViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => NotesViewModel(),
        ),
      ];
}
