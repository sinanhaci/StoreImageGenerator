import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:store_image_generator/core/extensions/context_extension.dart';
import 'package:store_image_generator/core/widgets/text_widgets/text_widgets.dart';
import 'package:store_image_generator/src/app/drawer_board/model/drawer_detail.dart';
import 'package:store_image_generator/src/app/drawer_board/model/drawer_item.dart';
import '../../../../static_data.dart';
import '../../../common/widgets/selection_widget/selection_widget.dart';
import '../common/background_view.dart';
import '../common/device_view.dart';
import '../common/font_view.dart';
import '../common/layout_view.dart';
import '../viewmodel/drawer_board_viewmodel.dart';
import '/export.dart';

class DrawerBoardView extends StatelessWidget {
  const DrawerBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<DrawerBoardViewModel>(
      viewModel: DrawerBoardViewModel(),
      onLoggerKey: PageLoggerKeys.drawerBoard,
      onInit: (viewModel) {
        viewModel.setContext(context);
        viewModel.init();
      },
      onDispose: (viewModel) {
        viewModel.dispose();
      },
      onView: (context, viewModel) {
        return Row(
          children: [
            _DrawerItems(
              viewModel: viewModel,
            ),
            Expanded(
              child: _DrawerDetail(
                viewModel: viewModel,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _DrawerItems extends StatelessWidget {
  final DrawerBoardViewModel viewModel;
  const _DrawerItems({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colors.white,
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                right: BorderSide(width: 0.1, color: context.colors.black))),
        width: context.responsiveValues<double>(
          phone: 50.0,
          tablet: 65.0,
          desktop: 75.0,
          desktop4k: 75.0,
        ),
        child: Column(
          children: List<Widget>.generate(drawerItems.length, (index) {
            var item = drawerItems[index];
            return _drawerItem(item);
          }),
        ),
      ),
    );
  }

  InkWell _drawerItem(DrawerItem item) {
    BuildContext context = viewModel.navigation.navigatorKey.currentContext!;
    return InkWell(
      onTap: () {
        viewModel.setDrawer(item);
      },
      child: SizedBox(
        width: double.infinity,
        child: Observer(builder: (_) {
          return Container(
            padding: context.paddingXLowVertical,
            decoration: BoxDecoration(
              color: _isSelected(item) ? context.colors.darkGray : null,
              border: const Border(
                bottom: BorderSide(width: 0.1),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: context.paddingLow,
                  child: Image.asset(
                    item.icon,
                    height: 15,
                    color: _isSelected(item)
                        ? context.colors.candy
                        : context.colors.black,
                  ),
                ),
                XSmallText(
                  item.name,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  color: _isSelected(item)
                      ? context.colors.candy
                      : context.colors.black,
                )
              ],
            ),
          );
        }),
      ),
    );
  }

  bool _isSelected(DrawerItem item) => item.id == viewModel.selectedDrawer.id;
}

class _DrawerDetail extends StatelessWidget {
  final DrawerBoardViewModel viewModel;
  const _DrawerDetail({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(border: Border(right: BorderSide(width: 0.1))),
      child: Observer(builder: (_) {
        var detailItem = details
            .firstWhere((e) => e.layoutId == viewModel.selectedDrawer.id);
        return _getWidgetByListingType(detailItem);
      }),
    );
  }

  Widget _getWidgetByListingType(DrawerDetail<dynamic> detailItem) {
    switch (detailItem.listingType) {
      case ListingType.gridView:
        return _ListingTypeGrid(
          itemCount: detailItem.items.length,
          itemBuilder: (context, index) {
            var item = detailItem.items[index];
            return _getWidgetByWidgetType(
              item: item,
              widgetType: detailItem.widgetType,
            );
          },
        );
      case ListingType.listView:
        return _ListingTypeListView(
          itemCount: detailItem.items.length,
          itemBuilder: (context, index) {
            var item = detailItem.items[index];
            return _getWidgetByWidgetType(
              item: item,
              widgetType: detailItem.widgetType,
            );
          },
        );
    }
  }

  Widget _getWidgetByWidgetType<T>(
      {required WidgetType widgetType, required T item}) {
    return Observer(builder: (_) {
      switch (widgetType) {
        case WidgetType.layout:
          var layout = item as Layout;
          return SelectionWidget(
            isSelection:
                viewModel.designBoard.selectedPage!.layout.id == layout.id,
            child: LayoutWidget(layout: layout, viewModel: viewModel),
          );
        case WidgetType.device:
          var device = item as Device;
          return SelectionWidget(
            isSelection:
                viewModel.designBoard.selectedPage!.device.id == device.id,
            child: DeviceWidget(device: device, viewModel: viewModel),
          );
        case WidgetType.font:
          var font = item as Font;
          return SelectionWidget(
            isSelection: viewModel.designBoard.selectedPage!.font.id == font.id,
            child: FontWidget(font: font, viewModel: viewModel),
          );
        case WidgetType.background:
          var background = item as Background;
          return SelectionWidget(
            isSelection: viewModel.designBoard.selectedPage!.background.id ==
                background.id,
            child:
                BackgroundWidget(background: background, viewModel: viewModel),
          );
      }
    });
  }
}

class _ListingTypeGrid extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  _ListingTypeGrid({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      controller: controller,
      child: AlignedGridView.count(
        crossAxisCount: context.responsiveValues<int>(
          phone: 1, tablet: 1, desktop: 2, desktop4k: 3),
        controller: controller,
        padding: context.paddingLow,
        crossAxisSpacing: 5,
        mainAxisSpacing: 15,
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }
}

class _ListingTypeListView extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  _ListingTypeListView({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      controller: controller,
      child: ListView.separated(
        separatorBuilder: (_, i) => SizedBox(height: context.lowValue),
        controller: controller,
        padding: context.paddingLow,
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
