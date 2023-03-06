
// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages

import 'package:mobx/mobx.dart';
import 'package:store_image_generator/core/widgets/global/global_controller.dart';
import 'package:store_image_generator/static_data.dart';
import '../../../../core/utilities/file_pick/pick_controller.dart';
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
  var picker = PickController();
  ScrollController scrollController = ScrollController();
  DesignBoardModel get _defaultPage => DesignBoardModel(id: uuid.v4(),index: 0,layout: layouts.first,device: devices.first,font: fonts.first,background: backgrounds.first);
  @observable
  DesignBoardModel? selectedPage;
  @observable
  ObservableList<DesignBoardModel> pages = ObservableList<DesignBoardModel>.of([]);
  @observable
  TextAlign alignLeft = TextAlign.left;
  @observable
  TextAlign alignCenter = TextAlign.center;
  @observable
  TextAlign alignRight = TextAlign.right;


  @computed
  bool get alignLeftStatus => selectedPage!.align == alignLeft;
  @computed
  bool get alignCenterStatus => selectedPage!.align == alignCenter;
  @computed
  bool get alignRightStatus => selectedPage!.align == alignRight;


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
  setImage(DesignBoardModel item) async {
    setSelectionPage(item);
    var result = await picker.pickImage();
    if(result != null){
      var index = pages.indexWhere((e) => e == selectedPage);
      pages[index] = item.copyWith(file: result);
      selectedPage = item.copyWith(file: result);
    }
    return;
  }

  @action
  setAlign(TextAlign align){
    if(pages.isEmpty) return;
    var index = pages.indexWhere((e) => e == selectedPage);
    pages[index] = pages[index].copyWith(align: align);
    selectedPage = selectedPage!.copyWith(align: align);
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
  deletePage(int index) {
    pages.removeAt(index);
    if(pages.isNotEmpty){
      setSelectionPage(pages.first);
    }
  }

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