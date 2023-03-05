// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer_board_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DrawerBoardViewModel on _DrawerBoardViewModelBase, Store {
  late final _$selectedDrawerAtom =
      Atom(name: '_DrawerBoardViewModelBase.selectedDrawer', context: context);

  @override
  DrawerItem get selectedDrawer {
    _$selectedDrawerAtom.reportRead();
    return super.selectedDrawer;
  }

  @override
  set selectedDrawer(DrawerItem value) {
    _$selectedDrawerAtom.reportWrite(value, super.selectedDrawer, () {
      super.selectedDrawer = value;
    });
  }

  late final _$_DrawerBoardViewModelBaseActionController =
      ActionController(name: '_DrawerBoardViewModelBase', context: context);

  @override
  dynamic setDesignProperties(DesignBoardModel item) {
    final _$actionInfo = _$_DrawerBoardViewModelBaseActionController
        .startAction(name: '_DrawerBoardViewModelBase.setDesignProperties');
    try {
      return super.setDesignProperties(item);
    } finally {
      _$_DrawerBoardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedDrawer: ${selectedDrawer}
    ''';
  }
}
