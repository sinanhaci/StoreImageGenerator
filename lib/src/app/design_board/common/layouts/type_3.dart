import 'package:store_image_generator/core/extensions/context_extension.dart';
import 'package:store_image_generator/src/common/constants/asset_constants.dart';
import '../../../../../export.dart';
import '../../../../../static_data.dart';
import '../../model/design_board_model.dart';
import '../../viewmodel/design_board_viewmodel.dart';

class Type3 extends StatelessWidget {
  final DesignBoardViewModel viewModel;
  final DesignBoardModel page;
  const Type3({
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
        padding: EdgeInsets.only(bottom: context.paddingMedium.bottom,left: context.paddingMedium.left,right: context.paddingMedium.right),
        child: Column(
          children: [
            Expanded(child: Image.asset(page.device.image.toHalfTop(),fit: BoxFit.cover,)),
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