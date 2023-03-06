// ignore_for_file: constant_identifier_names

class AssetConstans{
  AssetConstans._();


  //DRAWER
  static const String layout = 'assets/drawer/layout.png';
  static const String device = 'assets/drawer/device.png';
  static const String font = 'assets/drawer/font.png';
  static const String background = 'assets/drawer/background_color.png';
    //DRAWER-LAYOUT
    static const String layout_Type1 = 'assets/drawer/layout/type_1.png';
    static const String layout_Type2 = 'assets/drawer/layout/type_2.png';
    static const String layout_Type3 = 'assets/drawer/layout/type_3.png';
    static const String layout_Type4 = 'assets/drawer/layout/type_4.png';
    static const String layout_Type5 = 'assets/drawer/layout/type_5.png';
    //DRAWER-DEVICES
    static const String devices_iPhone14P = 'assets/drawer/devices/iphone_14_pro/iphone_14_pro.png';
    // static const String devices_iPhone14PHalfTop = 'assets/drawer/devices/iphone_14_pro/iphone_14_pro_half_top.png';
    // static const String devices_iPhone14PHalfBottom = 'assets/drawer/devices/iphone_14_pro/iphone_14_pro_half_bottom.png';
    static const String devices_iPhone13P = 'assets/drawer/devices/iphone_13_pro/iphone_13_pro.png';
    // static const String devices_iPhone13PHalfTop = 'assets/drawer/devices/iphone_13_pro_half_top.png';
    // static const String devices_iPhone13PHalfBottom = 'assets/drawer/devices/iphone_13_pro_half_bottom.png';
    static const String devices_iPhoneSE = 'assets/drawer/devices/iphone_se/iphone_se.png';
    // static const String devices_iPhoneSEHalfTop = 'assets/drawer/devices/iphone_se_half_top.png';
    // static const String devices_iPhoneSEHalfBottom = 'assets/drawer/devices/iphone_se_half_bottom.png';
    static const String devices_SamsungNote20 = 'assets/drawer/devices/samsung_galaxy_note20/samsung_galaxy_note20.png';
    // static const String devices_SamsungNote20HalfTop = 'assets/drawer/devices/samsung_galaxy_note20_half_top.png';
    // static const String devices_SamsungNote20HalfBottom = 'assets/drawer/devices/samsung_galaxy_note20_half_bottom.png';
    static const String devices_SonyXperia = 'assets/drawer/devices/sony_xperia/sony_xperia.png';
    // static const String devices_SonyXperiaHalfTop = 'assets/drawer/devices/sony_xperia_half_top.png';
    // static const String devices_SonyXperiaHalfBottom = 'assets/drawer/devices/sony_xperia_half_bottom.png';
    static const String devices_GooglePixel5 = 'assets/drawer/devices/google_pixel/google_pixel_5.png';
    // static const String devices_GooglePixel5HalfTop = 'assets/drawer/devices/google_pixel_5_half_top.png';
    // static const String devices_GooglePixel5HalfBottom = 'assets/drawer/devices/google_pixel_5_half_bottom.png';
    static const String devices_OnePlus8 = 'assets/drawer/devices/one_plus_8/one_plus_8.png';
    // static const String devices_OnePlus8HalfTop = 'assets/drawer/devices/one_plus_8_half_top.png';
    // static const String devices_OnePlus8HalfBottom = 'assets/drawer/devices/one_plus_8_half_bottom.png';



  //DESIGNBOARD
  static const String alignLeft = 'assets/align_left.png';
  static const String alignRight = 'assets/align_right.png';
  static const String alignCenter = 'assets/align_center.png';

/*
HalfTop
HalfBottom
 */

  
}

extension ToHalfImage on String {
  String toHalfBottom(){
    var split = this.split('.');
    return "${split.first}_bottom_half.${split.last}";
  }
  String toHalfTop(){
    var split = this.split('.');
    return "${split.first}_top_half.${split.last}";
  }
}