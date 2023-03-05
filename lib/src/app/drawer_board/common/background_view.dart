// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:store_image_generator/core/extensions/context_extension.dart';
import 'package:store_image_generator/src/app/drawer_board/viewmodel/drawer_board_viewmodel.dart';

import '../../../../export.dart';
import '../model/drawer_detail.dart';

class BackgroundWidget extends StatelessWidget {
  final Background background;
  final DrawerBoardViewModel viewModel;
  const BackgroundWidget({
    Key? key,
    required this.background,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => viewModel.setDesignProperties(viewModel.designBoard.selectedPage!.copyWith(background: background)),
      child: Container(
        height: context.height * .05,
        decoration: BoxDecoration(
          borderRadius: context.radiusLow,
          color: background.color
        ),
      ),
    );
  }
}
