// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'design_board_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DesignBoardViewModel on _DesignBoardViewModelBase, Store {
  Computed<bool>? _$alignLeftStatusComputed;

  @override
  bool get alignLeftStatus =>
      (_$alignLeftStatusComputed ??= Computed<bool>(() => super.alignLeftStatus,
              name: '_DesignBoardViewModelBase.alignLeftStatus'))
          .value;
  Computed<bool>? _$alignCenterStatusComputed;

  @override
  bool get alignCenterStatus => (_$alignCenterStatusComputed ??= Computed<bool>(
          () => super.alignCenterStatus,
          name: '_DesignBoardViewModelBase.alignCenterStatus'))
      .value;
  Computed<bool>? _$alignRightStatusComputed;

  @override
  bool get alignRightStatus => (_$alignRightStatusComputed ??= Computed<bool>(
          () => super.alignRightStatus,
          name: '_DesignBoardViewModelBase.alignRightStatus'))
      .value;

  late final _$selectedPageAtom =
      Atom(name: '_DesignBoardViewModelBase.selectedPage', context: context);

  @override
  DesignBoardModel? get selectedPage {
    _$selectedPageAtom.reportRead();
    return super.selectedPage;
  }

  @override
  set selectedPage(DesignBoardModel? value) {
    _$selectedPageAtom.reportWrite(value, super.selectedPage, () {
      super.selectedPage = value;
    });
  }

  late final _$pagesAtom =
      Atom(name: '_DesignBoardViewModelBase.pages', context: context);

  @override
  ObservableList<DesignBoardModel> get pages {
    _$pagesAtom.reportRead();
    return super.pages;
  }

  @override
  set pages(ObservableList<DesignBoardModel> value) {
    _$pagesAtom.reportWrite(value, super.pages, () {
      super.pages = value;
    });
  }

  late final _$alignLeftAtom =
      Atom(name: '_DesignBoardViewModelBase.alignLeft', context: context);

  @override
  TextAlign get alignLeft {
    _$alignLeftAtom.reportRead();
    return super.alignLeft;
  }

  @override
  set alignLeft(TextAlign value) {
    _$alignLeftAtom.reportWrite(value, super.alignLeft, () {
      super.alignLeft = value;
    });
  }

  late final _$alignCenterAtom =
      Atom(name: '_DesignBoardViewModelBase.alignCenter', context: context);

  @override
  TextAlign get alignCenter {
    _$alignCenterAtom.reportRead();
    return super.alignCenter;
  }

  @override
  set alignCenter(TextAlign value) {
    _$alignCenterAtom.reportWrite(value, super.alignCenter, () {
      super.alignCenter = value;
    });
  }

  late final _$alignRightAtom =
      Atom(name: '_DesignBoardViewModelBase.alignRight', context: context);

  @override
  TextAlign get alignRight {
    _$alignRightAtom.reportRead();
    return super.alignRight;
  }

  @override
  set alignRight(TextAlign value) {
    _$alignRightAtom.reportWrite(value, super.alignRight, () {
      super.alignRight = value;
    });
  }

  late final _$setImageAsyncAction =
      AsyncAction('_DesignBoardViewModelBase.setImage', context: context);

  @override
  Future setImage(DesignBoardModel item) {
    return _$setImageAsyncAction.run(() => super.setImage(item));
  }

  late final _$_DesignBoardViewModelBaseActionController =
      ActionController(name: '_DesignBoardViewModelBase', context: context);

  @override
  dynamic setSelectionPage(DesignBoardModel item) {
    final _$actionInfo = _$_DesignBoardViewModelBaseActionController
        .startAction(name: '_DesignBoardViewModelBase.setSelectionPage');
    try {
      return super.setSelectionPage(item);
    } finally {
      _$_DesignBoardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSelectionProperties(DesignBoardModel item) {
    final _$actionInfo = _$_DesignBoardViewModelBaseActionController
        .startAction(name: '_DesignBoardViewModelBase.setSelectionProperties');
    try {
      return super.setSelectionProperties(item);
    } finally {
      _$_DesignBoardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setAlign(TextAlign align) {
    final _$actionInfo = _$_DesignBoardViewModelBaseActionController
        .startAction(name: '_DesignBoardViewModelBase.setAlign');
    try {
      return super.setAlign(align);
    } finally {
      _$_DesignBoardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addPage({DesignBoardModel? item}) {
    final _$actionInfo = _$_DesignBoardViewModelBaseActionController
        .startAction(name: '_DesignBoardViewModelBase.addPage');
    try {
      return super.addPage(item: item);
    } finally {
      _$_DesignBoardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deletePage(int index) {
    final _$actionInfo = _$_DesignBoardViewModelBaseActionController
        .startAction(name: '_DesignBoardViewModelBase.deletePage');
    try {
      return super.deletePage(index);
    } finally {
      _$_DesignBoardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updatePage({required int index, required DesignBoardModel item}) {
    final _$actionInfo = _$_DesignBoardViewModelBaseActionController
        .startAction(name: '_DesignBoardViewModelBase.updatePage');
    try {
      return super.updatePage(index: index, item: item);
    } finally {
      _$_DesignBoardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedPage: ${selectedPage},
pages: ${pages},
alignLeft: ${alignLeft},
alignCenter: ${alignCenter},
alignRight: ${alignRight},
alignLeftStatus: ${alignLeftStatus},
alignCenterStatus: ${alignCenterStatus},
alignRightStatus: ${alignRightStatus}
    ''';
  }
}
