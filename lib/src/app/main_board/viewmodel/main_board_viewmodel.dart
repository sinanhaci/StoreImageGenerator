// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import '/export.dart';
part 'main_board_viewmodel.g.dart';

class MainBoardViewModel = _MainBoardViewModelBase with _$MainBoardViewModel;

abstract class _MainBoardViewModelBase extends BaseRequestMethod with Store, BaseViewModel {
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
}
