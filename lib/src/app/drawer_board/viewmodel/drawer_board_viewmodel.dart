// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import 'package:store_image_generator/src/app/drawer_board/model/drawer_detail.dart';
import 'package:store_image_generator/static_data.dart';
import '../../../../core/_core_configuration/init_configuration.dart';
import '../../design_board/model/design_board_model.dart';
import '../../design_board/viewmodel/design_board_viewmodel.dart';
import '../model/drawer_item.dart';
import '/export.dart';
part 'drawer_board_viewmodel.g.dart';

class DrawerBoardViewModel = _DrawerBoardViewModelBase
    with _$DrawerBoardViewModel;

abstract class _DrawerBoardViewModelBase extends BaseRequestMethod
    with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) {
    context = context;
    theme = Theme.of(context);
    size = MediaQuery.of(context).size;
  }

  @override
  void init() {}

  @override
  void dispose() {}

  final designBoard = getIt.get<DesignBoardViewModel>();

  @observable
  DrawerItem selectedDrawer = drawerItems.first;

  setDrawer(DrawerItem item) {
    selectedDrawer = item;
  }

  @action
  setDesignProperties(DesignBoardModel item){
    if(designBoard.pages.isNotEmpty){
      designBoard.setSelectionProperties(item);
    }
  }
}
