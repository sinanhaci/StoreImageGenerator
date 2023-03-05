import 'package:store_image_generator/core/extensions/context_extension.dart';
import '../../../../../export.dart';
import '../../model/design_board_model.dart';
import '../../viewmodel/design_board_viewmodel.dart';

class Type4 extends StatelessWidget {
  final DesignBoardViewModel viewModel;
  final DesignBoardModel page;
  const Type4({
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
        child: Column(
          children: [
            Text("Add your text here and create your screenshot",style: page.font.font,textAlign: page.align,),
            const SizedBox(
              height: 50,
            ),
            Expanded(child: Image.asset(page.device.image))
          ],
        ),
      ),
    );
  }
}