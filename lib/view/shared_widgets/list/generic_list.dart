import 'package:structure_demo/view/shared_widgets/no_items.dart';
import 'package:flutter/material.dart';

class GenericList extends StatelessWidget {
  final List<dynamic> items;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final Axis scrollDirection;
  final bool shrinkWrap;
  final ScrollController? scrollController;
  final ScrollPhysics? physics;

  const GenericList({
    Key? key,
    required this.items,
    required this.itemBuilder,
    this.scrollDirection = Axis.vertical,
    this.shrinkWrap = false,
    this.scrollController,
    this.physics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => items.isEmpty
      ? const NoItems()
      : ListView.builder(
          itemCount: items.length,
          itemBuilder: itemBuilder,
          scrollDirection: scrollDirection,
          controller: scrollController,
          shrinkWrap: shrinkWrap,
          physics: physics,
        );
}
