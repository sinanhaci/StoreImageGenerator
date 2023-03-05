// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:store_image_generator/core/extensions/context_extension.dart';
import 'package:store_image_generator/src/app/drawer_board/viewmodel/drawer_board_viewmodel.dart';

import '../../../../export.dart';
import '../model/drawer_detail.dart';

class LayoutWidget extends StatelessWidget {
  final Layout layout;
  final DrawerBoardViewModel viewModel;
  const LayoutWidget({
    Key? key,
    required this.layout,
    required this.viewModel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => viewModel.setDesignProperties(viewModel.designBoard.selectedPage!.copyWith(layout: layout)),
      child: Container(
        decoration: BoxDecoration(borderRadius: context.radiusLow),
        child: ClipRRect(
          borderRadius: context.radiusLow,
          child: Image.asset(
            layout.image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
