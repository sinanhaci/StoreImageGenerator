import 'package:store_image_generator/core/extensions/context_extension.dart';
import '../../../../../export.dart';
import '../../model/design_board_model.dart';
import '../../viewmodel/design_board_viewmodel.dart';

class Type1 extends StatelessWidget {
  final DesignBoardViewModel viewModel;
  final DesignBoardModel page;
  const Type1({
    Key? key,
    required this.viewModel,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => viewModel.setSelectionPage(page),
      child: Container(
        height: context.height,
        width: context.width * .21,
        color: page.background.color,
        padding: context.paddingMedium,
        child: Image.asset(page.device.image),
      ),
    );
  }
}