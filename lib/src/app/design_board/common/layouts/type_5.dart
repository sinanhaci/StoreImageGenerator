// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:store_image_generator/core/extensions/context_extension.dart';
import 'package:store_image_generator/src/app/design_board/viewmodel/design_board_viewmodel.dart';
import '../../../../../export.dart';
import '../../../../../static_data.dart';
import '../../model/design_board_model.dart';

class Type5 extends StatelessWidget {
  final DesignBoardViewModel viewModel;
  final DesignBoardModel page;
  const Type5({
    Key? key,
    required this.viewModel,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => viewModel.setSelectionPage(page),
      child: Container(
        height: StaticData.screenHeight,
        width: StaticData.screenWidth,
        color: page.background.color,
        padding: context.paddingMedium,
        child: Column(
          children: [
            Expanded(child: Image.asset(page.device.image)),
            const SizedBox(
              height: 50,
            ),
            Text("Add your text here and create your screenshot",style: page.font.font,textAlign: page.align,),
          ],
        ),
      ),
    );
  }
}
