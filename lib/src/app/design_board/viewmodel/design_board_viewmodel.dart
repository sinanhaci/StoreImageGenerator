
// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages

import 'package:mobx/mobx.dart';
import 'package:store_image_generator/static_data.dart';
import '../model/design_board_model.dart';
import '/export.dart';
import 'package:uuid/uuid.dart';
part 'design_board_viewmodel.g.dart';


class DesignBoardViewModel = _DesignBoardViewModelBase with _$DesignBoardViewModel;

abstract class _DesignBoardViewModelBase extends BaseRequestMethod with Store, BaseViewModel {
  
  @override
  void setContext(BuildContext context) {
	  context = context;
	  theme = Theme.of(context);
	  size = MediaQuery.of(context).size;
  }

  @override
  void init() {
    if(pages.isEmpty){
      addPage(item: _defaultPage);
      selectedPage = pages.first;
    }
  }

  @override
  void dispose() {}
  
  var uuid = const Uuid();
  ScrollController scrollController = ScrollController();
  DesignBoardModel get _defaultPage => DesignBoardModel(id: uuid.v4(),index: 0,layout: layouts.first,device: devices.first,font: fonts.first,background: backgrounds.first);
  @observable
  DesignBoardModel? selectedPage;
  @observable
  ObservableList<DesignBoardModel> pages = ObservableList<DesignBoardModel>.of([]);


  @action
  setSelectionPage(DesignBoardModel item) {
    selectedPage = item;
  }

  @action
  setSelectionProperties(DesignBoardModel item){
    var index = pages.indexWhere((e) => e == selectedPage);
    selectedPage = item;
    updatePage(index: index,item: item);
  }

  @action
  setAlign(TextAlign align){
    if(pages.isEmpty) return;
    var index = pages.indexWhere((e) => e == selectedPage);
    selectedPage!.align = align;
    pages[index].align = align;
  }


  @action
  addPage({DesignBoardModel? item}){
    if(item == null){
      pages.add(_defaultPage);
    }else{
      pages.add(item);
    }
    
  }

  @action
  deletePage(int index) => pages.removeAt(index);

  @action
  updatePage({required int index,required DesignBoardModel item}) => pages[index] = item;

  newItem(){
    DesignBoardModel item = _defaultPage.copyWith(
      background: pages.isEmpty ? null : pages.last.background,
      device: pages.isEmpty ? null : pages.last.device,
      font: pages.isEmpty ? null : pages.last.font,
      layout: pages.isEmpty ? null : pages.last.layout,
      id: uuid.v4()
    );
    if(pages.isEmpty){
      setSelectionPage(item);
    }
    addPage(item: item);
  }


}