import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:store_image_generator/core/extensions/context_extension.dart';
import '../../../../export.dart';
import '../viewmodel/design_board_viewmodel.dart';

class BasePageView extends StatelessWidget {
  final int index;
  final DesignBoardViewModel viewModel;
  final Widget child;
  const BasePageView({
    Key? key,
    required this.index,
    required this.viewModel,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Observer(builder: (_) {
          return Padding(
            padding: context.paddingLow,
            child: DottedBorder(
              color: viewModel.selectedPage!.id == viewModel.pages[index].id
                  ? context.colors.candy
                  : context.colors.white,
              borderType: BorderType.RRect,
              strokeWidth: 1,
              dashPattern: const [5],
              child: child,
            ),
          );
        }),
        Positioned(
          right: 0,
          top: 0,
          child: SizedBox(
            height: 45,
            width: 45,
            child: FloatingActionButton(
              backgroundColor: context.colors.candy,
              child: Icon(
                Icons.delete,
                color: context.colors.white,
              ),
              onPressed: () => viewModel.deletePage(index),
            ),
          ),
        )
      ],
    );
  }
}
