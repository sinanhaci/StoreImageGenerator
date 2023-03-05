import 'package:flutter/material.dart';
import 'package:store_image_generator/core/extensions/context_extension.dart';
import 'package:store_image_generator/core/navigation/navigation_service.dart';
import 'package:store_image_generator/core/theme/extensions/color_extensions.dart';

class SelectionWidget extends StatelessWidget {
  final Widget child;
  final bool isSelection;
  const SelectionWidget({
    Key? key,
    required this.child,
    required this.isSelection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.paddingXLowHorizontal,
      decoration: isSelection ? selectionDecoration : null,
      child: child,
    );
  }

  Decoration get selectionDecoration => BoxDecoration(
    borderRadius: NavigationService.instance.navigatorKey.currentContext!.radiusLow,
    border: Border.all(
      color: NavigationService .instance.navigatorKey.currentContext!.colors.yellow,
      width: 3,
    ),
  );
}
