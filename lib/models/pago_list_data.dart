import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_ui/models/room_data.dart';
import 'package:flutter_hotel_booking_ui/utils/localfiles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PagoListData {
  String imagePath;
  String titleTxt;
  String subTxt;
  DateText? date;
  String dateTxt;
  String roomSizeTxt;
  RoomData? roomData;
  double dist;
  double rating;
  int perNight;
  bool isSelected;
  PeopleSleeps? peopleSleeps;
  LatLng? location;
  Offset? screenMapPin; // we used this screen Offset for adding on Map layer

  PagoListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dateTxt = "",
    this.roomSizeTxt = "",
    this.roomData,
    this.dist = 1.8,
    this.rating = 4.5,
    this.perNight = 180,
    this.isSelected = false,
    this.date,
    this.peopleSleeps,
    this.location,
    this.screenMapPin,
  });

  static List<PagoListData> romeList2 = [
    PagoListData(
        imagePath:
            'assets/images/room_1.jpg assets/images/room_2.jpg assets/images/room_3.jpg',
        titleTxt: 'Habitacion\n Simple\t',
        perNight: 180,
        dateTxt: 'Sleeps 3 people',
        roomData: RoomData(2, 2)),
    PagoListData(
        imagePath:
            'assets/images/room_4.jpg assets/images/room_5.jpg assets/images/room_6.jpg',
        titleTxt: 'Habitacion\n Doble\t',
        perNight: 200,
        dateTxt: 'Sleeps 3 people + 2 children',
        roomData: RoomData(3, 2)),
    PagoListData(
        imagePath:
            'assets/images/room_7.jpg assets/images/room_8.jpg assets/images/room_9.jpg',
        titleTxt: 'Habitacion\n Familiar\t',
        perNight: 240,
        dateTxt: 'Sleeps 4 people + 4 children',
        roomData: RoomData(4, 4)),
    PagoListData(
        imagePath:
            'assets/images/room_10.jpg assets/images/room_11.jpg assets/images/room_12.jpg',
        titleTxt: 'Habitacion\n ejecutiva\t',
        perNight: 240,
        dateTxt: 'Sleeps 4 people + 4 children',
        roomData: RoomData(4, 4)),
    PagoListData(
        imagePath:
            'assets/images/room_11.jpg assets/images/room_1.jpg assets/images/room_2.jpg',
        titleTxt: 'Sonesta\nGold\t',
        perNight: 260,
        dateTxt: 'Sleeps 4 people + 4 children',
        roomData: RoomData(4, 4)),
  ];
}
