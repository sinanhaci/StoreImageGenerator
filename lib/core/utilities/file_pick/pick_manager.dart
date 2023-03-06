import '../../constants/enums/pick_type_enum.dart';



abstract class IPickManager<T> {
  Future<T?> pickImage({PickFileType returnFileType, bool cropImage});
}
