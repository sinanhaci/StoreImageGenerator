import 'package:store_image_generator/core/extensions/context_extension.dart';
import 'package:store_image_generator/core/widgets/text_widgets/text_widgets.dart';
import 'package:store_image_generator/src/app/drawer_board/view/drawer_board_view.dart';
import 'package:store_image_generator/src/common/widgets/buttons/large_button.dart';
import '../../../../core/_core_configuration/init_configuration.dart';
import '../../design_board/view/design_board_view.dart';
import '../viewmodel/main_board_viewmodel.dart';
import '/export.dart';

class MainBoardView extends StatelessWidget {
  MainBoardView({super.key});

  final mainBoard = getIt.get<MainBoardViewModel>();

  @override
  Widget build(BuildContext context) {
    return BaseView<MainBoardViewModel>(
      viewModel: mainBoard,
      onLoggerKey: PageLoggerKeys.mainBoard,
      onInit: (viewModel) {
        viewModel.init();
        viewModel.setContext(context);
      },
      onDispose: (viewModel) {
        viewModel.dispose();
      },
      onView: (context, viewModel) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1,
            title: const MediumText(
                "App Store & Google Play Store Image Generator"),
            actions: [
              LargeButton(
                width: 120,
                buttonColor: context.colors.candy,
                onTap: () {},
                borderColor: context.colors.candy,
                buttonText: 'Download',
              )
            ],
          ),
          body: Row(
            children: [
              SizedBox(
                width: context.responsiveValues<double>(
                  phone: context.width * .55,
                  tablet: context.width * .45,
                  desktop: context.width * .30,
                  desktop4k: context.width * .30,
                ),
                child: const DrawerBoardView(),
              ),
              Expanded(
                child: DesignBoardView(),
              ),
            ],
          ),
        );
      },
    );
  }
}
