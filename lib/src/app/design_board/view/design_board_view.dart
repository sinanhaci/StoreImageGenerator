import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:store_image_generator/core/extensions/context_extension.dart';
import 'package:store_image_generator/src/app/design_board/common/layouts/type_1.dart';
import 'package:store_image_generator/src/common/constants/asset_constants.dart';
import 'package:store_image_generator/src/common/widgets/buttons/square_button.dart';
import '../../../../core/_core_configuration/init_configuration.dart';
import '../../drawer_board/model/drawer_detail.dart';
import '../common/base_page_view.dart';
import '../common/layouts/type_2.dart';
import '../common/layouts/type_3.dart';
import '../common/layouts/type_4.dart';
import '../common/layouts/type_5.dart';
import '../model/design_board_model.dart';
import '../viewmodel/design_board_viewmodel.dart';
import '/export.dart';

class DesignBoardView extends StatelessWidget {
  DesignBoardView({super.key});

  final designBoard = getIt.get<DesignBoardViewModel>();

  @override
  Widget build(BuildContext context) {
    return BaseView<DesignBoardViewModel>(
      viewModel: designBoard,
      onLoggerKey: PageLoggerKeys.designBoard,
      onInit: (viewModel) {
        viewModel.setContext(context);
        viewModel.init();
      },
      onDispose: (viewModel) {
        viewModel.dispose();
      },
      onView: (context, viewModel) {
        return Scaffold(
          body: Column(
            children: [
              _StylePanel(viewModel: viewModel),
              _Pages(viewModel: viewModel),
            ],
          ),
        );
      },
    );
  }
}

class _StylePanel extends StatelessWidget {
  final DesignBoardViewModel viewModel;
  const _StylePanel({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * .07,
      margin: context.paddingMediumHorizontal,
      decoration:
          const BoxDecoration(border: Border(bottom: BorderSide(width: 0.1))),
      child: Row(
        children: [
          _alignment(context),
        ],
      ),
    );
  }

  Observer _alignment(BuildContext context) {
    return Observer(builder: (_){
      return Row(
        children: [
          SquareButton(
            onTap: () => viewModel.setAlign(TextAlign.left),
            assetImage: AssetConstans.alignLeft,
            backgroundColor: viewModel.selectedPage!.align == TextAlign.left ? context.colors.candy : context.colors.gray,
            iconColor: viewModel.selectedPage!.align == TextAlign.left ? context.colors.white : context.colors.candy,
          ),
          SquareButton(
            onTap: () => viewModel.setAlign(TextAlign.center),
            assetImage: AssetConstans.alignCenter,
            backgroundColor: viewModel.selectedPage!.align == TextAlign.center ? context.colors.candy : context.colors.gray,
            iconColor: viewModel.selectedPage!.align == TextAlign.center ? context.colors.white : context.colors.candy,
          ),
          SquareButton(
            onTap: () => viewModel.setAlign(TextAlign.right),
            assetImage: AssetConstans.alignRight,
            backgroundColor: viewModel.selectedPage!.align == TextAlign.right ? context.colors.candy : context.colors.gray,
            iconColor: viewModel.selectedPage!.align == TextAlign.right ? context.colors.white : context.colors.candy,
          ),
        ],
      );
    });
  }
}

class _Pages extends StatelessWidget {
  final DesignBoardViewModel viewModel;
  const _Pages({
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        thickness: 10,
        scrollbarOrientation: ScrollbarOrientation.top,
        thumbVisibility: true,
        controller: viewModel.scrollController,
        child: Observer(
          builder: (_) {
            return ListView.separated(
              controller: viewModel.scrollController,
              padding: context.paddingMedium,
              itemCount: viewModel.pages.length + 1,
              separatorBuilder: (_, i) => const SizedBox(width: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == viewModel.pages.length) {
                  return _newItem();
                } else {
                  var page = viewModel.pages[index];
                  return BasePageView(
                    index: index,
                    viewModel: viewModel,
                    child: _getLayoutByLayoutType(page),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }

  Widget _getLayoutByLayoutType(DesignBoardModel page){
    switch (page.layout.type) {
      case LayoutType.type_1:
        return Type1(page: page,viewModel: viewModel);
      case LayoutType.type_2:
        return Type2(page: page,viewModel: viewModel);
      case LayoutType.type_3:
        return Type3(page: page,viewModel: viewModel);
      case LayoutType.type_4:
        return Type4(page: page,viewModel: viewModel);
      case LayoutType.type_5:
        return Type5(page: page,viewModel: viewModel);
    }
  }

  _newItem() {
    BuildContext context = viewModel.navigation.navigatorKey.currentContext!;
    return FloatingActionButton(
      heroTag: null,
      backgroundColor: context.colors.candy,
      onPressed: viewModel.newItem,
      child: Icon(
        Icons.add,
        color: context.colors.white,
      ),
    );
  }
}











