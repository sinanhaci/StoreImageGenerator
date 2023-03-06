import 'package:image_picker/image_picker.dart';
import '../../constants/enums/pick_type_enum.dart';
import 'pick_manager.dart';
import 'picker_helper.dart';



class PickController<T> extends PickHelper implements IPickManager {

  @override
/// ```dart
/// 
/// 
/// [Example]
/// 
/// var result = await PickController<String?>().pickImage(ImageSource.gallery, returnFileType: PickFileType.base64);
/// print(result);
/// 
/// 
/// ```
  Future<T?> pickImage({PickFileType returnFileType = PickFileType.xFile,bool cropImage = true}) async {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        return await returnedFileType(image, returnFileType);
      }
       return null;
    }


}

