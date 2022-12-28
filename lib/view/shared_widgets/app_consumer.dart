import 'package:provider/provider.dart';
import 'package:structure_demo/view/shared_widgets/center_progress.dart';
import 'package:structure_demo/business/shared/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';

class AppConsumer<T extends BaseViewModel> extends SingleChildStatelessWidget {
  final Widget Function() builder;
  final Widget busyWidget;

  const AppConsumer({
    Key? key,
    required this.builder,
    Widget? child,
    this.busyWidget = const CenterProgress(),
  }) : super(key: key);

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      context.watch<T>().busy ? busyWidget : builder();
}
