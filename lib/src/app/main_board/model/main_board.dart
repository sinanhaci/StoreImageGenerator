// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../drawer_board/model/drawer_item.dart';

class MainBoard {
  DrawerItem selectedDrawer;
  MainBoard({
    required this.selectedDrawer,
  });

  MainBoard copyWith({
    DrawerItem? selectedDrawer,
  }) {
    return MainBoard(
      selectedDrawer: selectedDrawer ?? this.selectedDrawer,
    );
  }
}
