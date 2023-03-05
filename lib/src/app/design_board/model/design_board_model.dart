// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:store_image_generator/export.dart';
import 'package:store_image_generator/src/app/drawer_board/model/drawer_detail.dart';

class DesignBoardModel {
  String id;
  int index;
  Layout layout;
  Device device;
  Font font;
  Background background;
  TextAlign align;
  DesignBoardModel({
    required this.id,
    required this.index,
    required this.layout,
    required this.device,
    required this.font,
    required this.background,
    this.align = TextAlign.left
  });

  DesignBoardModel copyWith({
    String? id,
    int? index,
    Layout? layout,
    Device? device,
    Font? font,
    Background? background,
    TextAlign? align,
  }) {
    return DesignBoardModel(
      id: id ?? this.id,
      index: index ?? this.index,
      layout: layout ?? this.layout,
      device: device ?? this.device,
      font: font ?? this.font,
      background: background ?? this.background,
      align: align ?? this.align
    );
  }

  @override
  bool operator ==(covariant DesignBoardModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.index == index &&
      other.layout == layout &&
      other.device == device &&
      other.font == font &&
      other.background == background;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      index.hashCode ^
      layout.hashCode ^
      device.hashCode ^
      font.hashCode ^
      background.hashCode;
  }
}
