import 'package:google_fonts/google_fonts.dart';
import 'package:store_image_generator/src/app/drawer_board/model/drawer_detail.dart';
import 'package:store_image_generator/src/common/constants/asset_constants.dart';
import 'export.dart';
import 'src/app/drawer_board/model/drawer_item.dart';



 //TODO: JSON MODELE ÇEVİR


List<DrawerItem> drawerItems = [
  DrawerItem(id: 0,name: "Layout", icon: AssetConstans.layout),
  DrawerItem(id: 1,name: "Device", icon: AssetConstans.device),
  DrawerItem(id: 2,name: "Font", icon: AssetConstans.font),
  DrawerItem(id: 3,name: "Background", icon: AssetConstans.background),
];

List<DrawerDetail> details = [
  DrawerDetail<Layout>(layoutId: 0,items: layouts,listingType: ListingType.gridView,widgetType: WidgetType.layout),
  DrawerDetail<Device>(layoutId: 1,items: devices,listingType: ListingType.gridView,widgetType: WidgetType.device),
  DrawerDetail<Font>(layoutId: 2,items: fonts,listingType: ListingType.listView,widgetType: WidgetType.font),
  DrawerDetail<Background>(layoutId: 3,items: backgrounds,listingType: ListingType.listView,widgetType: WidgetType.background),


];

List<Layout> layouts = [
  Layout(id: 0,image: AssetConstans.layout_Type1,type: LayoutType.type_1),
  Layout(id: 1,image: AssetConstans.layout_Type2,type: LayoutType.type_2),
  Layout(id: 2,image: AssetConstans.layout_Type3,type: LayoutType.type_3),
  Layout(id: 3,image: AssetConstans.layout_Type4,type: LayoutType.type_4),
  Layout(id: 4,image: AssetConstans.layout_Type5,type: LayoutType.type_5),
];

List<Device> devices = [
  Device(id: 0,title: "iPhone 14 Pro", image: AssetConstans.devices_iPhone14P),
  Device(id: 1,title: "iPhone 13 Pro", image: AssetConstans.devices_iPhone13P),
  Device(id: 2,title: "iPhone SE", image: AssetConstans.devices_iPhoneSE),
  Device(id: 3,title: "Samsung Galaxy Note 20", image: AssetConstans.devices_SamsungNote20),
  Device(id: 5,title: "Google Pixel 5A", image: AssetConstans.devices_GooglePixel5),
  Device(id: 6,title: "Sony Xperia", image: AssetConstans.devices_SonyXperia),
  Device(id: 8,title: "One Plus 8", image: AssetConstans.devices_OnePlus8),

];

List<Font> fonts = [
  Font(id: 0, font: GoogleFonts.openSans(), text: 'Bu font bu şekilde gözüküyor.',fontName: "Open Sans"),
  Font(id: 1, font: GoogleFonts.alegreya(), text: 'Bu font bu şekilde gözüküyor.',fontName: "Alegreya"),
  Font(id: 2, font: GoogleFonts.roboto(), text: 'Bu font bu şekilde gözüküyor.',fontName: "Roboto"),
  Font(id: 3, font: GoogleFonts.anekBangla(), text: 'Bu font bu şekilde gözüküyor.',fontName: "Anek Bangla"),
  Font(id: 4, font: GoogleFonts.montserrat(), text: 'Bu font bu şekilde gözüküyor.',fontName: "Montserrat"),
  Font(id: 5, font: GoogleFonts.lato(), text: 'Bu font bu şekilde gözüküyor.',fontName: "Lato"),
  Font(id: 6, font: GoogleFonts.poppins(), text: 'Bu font bu şekilde gözüküyor.',fontName: "Poppins"),
  Font(id: 7, font: GoogleFonts.oswald(), text: 'Bu font bu şekilde gözüküyor.',fontName: "Oswald"),
  Font(id: 8, font: GoogleFonts.raleway(), text: 'Bu font bu şekilde gözüküyor.',fontName: "Raleway"),
  Font(id: 9, font: GoogleFonts.merriweather(), text: 'Bu font bu şekilde gözüküyor.',fontName: "Merriweather"),
];

List<Background> backgrounds = [
  Background(id: 0, color: Colors.orange),
  Background(id: 1, color: Colors.orangeAccent),
  Background(id: 2, color: Colors.black),
  Background(id: 3, color: Colors.white),
  Background(id: 4, color: Colors.red),
  Background(id: 5, color: Colors.redAccent),
  Background(id: 6, color: Colors.blue),
  Background(id: 7, color: Colors.blueAccent),
  Background(id: 8, color: Colors.purple),
  Background(id: 9, color: Colors.purpleAccent),
  Background(id: 10, color: Colors.pink),
  Background(id: 11, color: Colors.pinkAccent),
  Background(id: 12, color: Colors.green),
  Background(id: 13, color: Colors.greenAccent),
];