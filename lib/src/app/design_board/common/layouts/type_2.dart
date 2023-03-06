import 'dart:io';
import 'package:store_image_generator/core/extensions/context_extension.dart';
import 'package:store_image_generator/src/common/constants/asset_constants.dart';
import '../../../../../export.dart';
import '../../../../../static_data.dart';
import '../../model/design_board_model.dart';
import '../../viewmodel/design_board_viewmodel.dart';

class Type2 extends StatelessWidget {
  final DesignBoardViewModel viewModel;
  final DesignBoardModel page;
  final int index;
  const Type2({
    Key? key,
    required this.viewModel,
    required this.page,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => viewModel.setSelectionPage(page),
      child: Container(
        height: StaticData.screenHeight,
        width: StaticData.screenWidth,
        color: page.background.color,
        padding: EdgeInsets.only(
            top: context.paddingMedium.top,
            left: context.paddingMedium.left,
            right: context.paddingMedium.right),
        child: Column(
          children: [
            Text(
              "Add your text here and create your screenshot",
              style: page.font.font,
              textAlign: page.align,
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      margin: const EdgeInsets.only(left: 14,right: 14,top: 30),
                      decoration: BoxDecoration(
                        borderRadius: context.radiusLowTop,
                        color: page.background.color,
                      ),
                      child: ClipRRect(
                        borderRadius: context.radiusLowTop,
                        child: page.image == null ? null : Image.network(File(page.image!.path).path,fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => viewModel.setImage(page),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(page.device.image.toHalfBottom(),)
                        )
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
