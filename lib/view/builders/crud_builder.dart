import 'package:flutter/material.dart';
import 'package:structure_demo/business/shared/crud/crud_view_model.dart';
import 'package:structure_demo/business/shared/view_model_exception.dart';
import 'package:structure_demo/generated/l10n.dart';
import 'package:structure_demo/models/map_model.dart';
import 'package:structure_demo/view/shared_widgets/app_consumer.dart';
import 'package:structure_demo/view/shared_widgets/center_progress.dart';
import 'package:structure_demo/view/utils/dialogs_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class CrudBuilder<V extends CrudViewModel<T>, T extends MapModel>
    extends SingleChildStatefulWidget {
  final Widget Function(
    BuildContext context,
    T item,
  ) builder;
  final Widget busyWidget;
  final Function(ViewModelException e)? onError;

  const CrudBuilder({
    Key? key,
    required this.builder,
    this.busyWidget = const CenterProgress(),
    this.onError,
  }) : super(key: key);

  @override
  State<CrudBuilder> createState() => _CrudBuilderState<V, T>();
}

class _CrudBuilderState<V extends CrudViewModel<T>, T extends MapModel>
    extends SingleChildState<CrudBuilder<V, T>> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      () async {
        try {
          context.read<V>().retrieve().then((_) => {});
        } on ViewModelException catch (e) {
          await DialogsManager.showOkDialog(
            context: context,
            message: e.toString(),
          );

          widget.onError?.call(e);
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
  Widget buildWithChild(BuildContext context, Widget? child) => AppConsumer<V>(
        builder: (_, value) => value.item == null
            ? widget.busyWidget
            : widget.builder(context, value.item!),
        busyWidget: widget.busyWidget,
      );
}
