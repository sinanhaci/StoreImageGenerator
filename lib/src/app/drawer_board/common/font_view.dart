import 'package:store_image_generator/core/extensions/context_extension.dart';
import 'package:store_image_generator/src/app/drawer_board/viewmodel/drawer_board_viewmodel.dart';
import '../../../../core/widgets/text_widgets/text_widgets.dart';
import '../../../../export.dart';
import '../model/drawer_detail.dart';

class FontWidget extends StatelessWidget {
  final Font font;
  final DrawerBoardViewModel viewModel;
  const FontWidget({
    Key? key,
    required this.font,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => viewModel.setDesignProperties(viewModel.designBoard.selectedPage!.copyWith(font: font)),
      child: Container(
        padding: context.paddingLow,
        decoration: BoxDecoration(
          borderRadius: context.radiusLow,
          color: context.colors.gray
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(font.text,style: font.font,maxLines: 1,overflow: TextOverflow.ellipsis,),
            const SizedBox(
              height: 15,
            ),
            XSmallText(font.fontName)
          ],
        ),
      ),
    );
  }
}
