// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:store_image_generator/core/extensions/context_extension.dart';

import '../../../../core/widgets/text_widgets/text_widgets.dart';
import '../../../../export.dart';
import '../model/drawer_detail.dart';
import '../viewmodel/drawer_board_viewmodel.dart';

class DeviceWidget extends StatelessWidget {
  final Device device;
  final DrawerBoardViewModel viewModel;
  const DeviceWidget({
    Key? key,
    required this.device,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => viewModel.setDesignProperties(viewModel.designBoard.selectedPage!.copyWith(device: device)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: context.radiusLow,
          color: context.colors.darkGray,
          border: Border.all(
            width: 0.1,
            color: context.colors.black
          )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: context.paddingLow,
              padding: context.paddingLow,
              child: ClipRRect(
                borderRadius: context.radiusLowTop,
                child: Image.asset(
                  device.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              alignment:Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.gray,
                borderRadius: context.radiusLowBottom
              ),
              padding: context.paddingLow,
              child: SmallText(device.title,fontWeightEnum: FontWeightEnum.bold,),
            ),
          ],
        ),
      ),
    );
  }
}
