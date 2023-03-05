import 'package:store_image_generator/export.dart';

class DrawerDetail<T> {
  int layoutId;
  ListingType listingType;
  WidgetType widgetType;
  List<T> items;
  DrawerDetail({
    required this.layoutId,
    required this.listingType,
    required this.widgetType,
    required this.items,
  });
}

enum ListingType { gridView, listView }

enum WidgetType { layout, device, font, background }

enum LayoutType {type_1,type_2,type_3,type_4,type_5}

class Layout {
  int id;
  String image;
  LayoutType type;
  Layout({
    required this.id,
    required this.image,
    required this.type
  });
}

class Device {
  int id;
  String image;
  String title;
  Device({
    required this.id,
    required this.image,
    required this.title
  });
}

class Font {
  int id;
  TextStyle font;
  String text;
  String fontName;
  Font({
    required this.id,
    required this.font,
    required this.text,
    required this.fontName
  });
}

class Background {
  int id;
  Color color;
  Background({
    required this.id,
    required this.color,
  });
}

