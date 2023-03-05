// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'design_board_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DesignBoardViewModel on _DesignBoardViewModelBase, Store {
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
pages: ${pages}
    ''';
  }
}
