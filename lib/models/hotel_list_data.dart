import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_ui/models/room_data.dart';
import 'package:flutter_hotel_booking_ui/utils/localfiles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HotelListData {
  String imagePath;
  String titleTxt;
  String subTxt;
  DateText? date;
  String dateTxt;
  String roomSizeTxt;
  RoomData? roomData;
  double dist;
  double rating;
  int Reviews;
  int perNight;
  bool isSelected;
  PeopleSleeps? peopleSleeps;
  LatLng? location;
  Offset? screenMapPin; // we used this screen Offset for adding on Map layer

  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dateTxt = "",
    this.roomSizeTxt = "",
    this.roomData,
    this.dist = 1.8,
    this.Reviews = 80,
    this.rating = 4.5,
    this.perNight = 180,
    this.isSelected = false,
    this.date,
    this.peopleSleeps,
    this.location,
    this.screenMapPin,
  });

  // we need location in this hotelList bcz we using that in map
  static List<HotelListData> hotelList = [
    HotelListData(
      imagePath: Localfiles.hotel_1,
      titleTxt: 'Sonesta Loja',
      subTxt: 'Loja, Ecuador',
      dist: 2.0,
      Reviews: 80,
      rating: 4.4,
      perNight: 180,
      roomData: RoomData(1, 2),
      isSelected: true,
      date: DateText(1, 5),
      location: LatLng(51.516898, -0.143377),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_2,
      titleTxt: 'Sonesta Cuenca',
      subTxt: 'Loja, Ecuador',
      dist: 4.0,
      Reviews: 74,
      rating: 4.5,
      perNight: 200,
      roomData: RoomData(1, 3),
      isSelected: false,
      date: DateText(2, 6),
      location: LatLng(51.505799, -0.137904),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_3,
      titleTxt: 'Sonesta Quito',
      subTxt: 'Quito, Ecuador',
      dist: 3.0,
      Reviews: 62,
      rating: 4.0,
      perNight: 60,
      roomData: RoomData(2, 3),
      isSelected: false,
      date: DateText(5, 9),
      location: LatLng(51.499162, -0.119788),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_4,
      titleTxt: 'Sonesta Guayaquil',
      subTxt: 'Guayaquil, Ecuador',
      dist: 7.0,
      Reviews: 90,
      rating: 4.4,
      perNight: 170,
      isSelected: false,
      roomData: RoomData(2, 2),
      date: DateText(1, 5),
      location: LatLng(51.519541, -0.114503),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_5,
      titleTxt: 'Sonesta Machala',
      subTxt: 'Machala, Ecuador',
      dist: 2.0,
      Reviews: 240,
      rating: 4.5,
      isSelected: false,
      perNight: 200,
      roomData: RoomData(1, 7),
      date: DateText(1, 4),
      location: LatLng(51.508383, -0.109502),
    ),
  ];

  static List<HotelListData> popularList = [
    HotelListData(
      imagePath: Localfiles.popular_1,
      titleTxt: 'Ecuador',
    ),
    HotelListData(
      imagePath: Localfiles.popular_2,
      titleTxt: 'Colombia',
    ),
    HotelListData(
      imagePath: Localfiles.popular_3,
      titleTxt: 'España',
    ),
    HotelListData(
      imagePath: Localfiles.popular_4,
      titleTxt: 'EEUU',
    ),
    HotelListData(
      imagePath: Localfiles.popular_5,
      titleTxt: 'Francia',
    ),
  ];

  static List<HotelListData> ReviewsList = [
    HotelListData(
      imagePath: Localfiles.avatar1,
      titleTxt: 'Edison Gaibor',
      subTxt: 'El hotel se encuentra en muy buena ubicacion',
      rating: 8.0,
      dateTxt: '18 Junio, 2022',
    ),
    HotelListData(
      imagePath: Localfiles.avatar3,
      titleTxt: 'Franz Paccha',
      subTxt: 'El hotel se encuentra en muy buena ubicacion',
      rating: 8.0,
      dateTxt: '17 Junio, 2022',
    ),
    HotelListData(
      imagePath: Localfiles.avatar5,
      titleTxt: 'Lenin Sanchez',
      subTxt: 'El hotel se encuentra en muy buena ubicacion',
      rating: 6.0,
      dateTxt: '21 May, 2022',
    ),
    HotelListData(
      imagePath: Localfiles.avatar2,
      titleTxt: 'Edison Ruiz',
      subTxt: 'El hotel se encuentra en muy buena ubicacion',
      rating: 9.0,
      dateTxt: '21 May, 2022',
    ),
    HotelListData(
      imagePath: Localfiles.avatar4,
      titleTxt: 'Luis Diaz',
      subTxt: 'El hotel se encuentra en muy buena ubicacion',
      rating: 8.0,
      dateTxt: '21 May, 2022',
    ),
    HotelListData(
      imagePath: Localfiles.avatar6,
      titleTxt: 'Karla Sanchez',
      subTxt: 'El hotel se encuentra en muy buena ubicacion',
      rating: 7.0,
      dateTxt: '21 May, 2022',
    ),
  ];

  static List<HotelListData> romeList = [
    HotelListData(
        imagePath:
            'assets/images/room_1.jpg assets/images/room_2.jpg assets/images/room_3.jpg',
        titleTxt: 'Habitacion\n Simple\t',
        perNight: 180,
        dateTxt: 'Sleeps 3 people',
        roomData: RoomData(2, 2)),
    HotelListData(
        imagePath:
            'assets/images/room_4.jpg assets/images/room_5.jpg assets/images/room_6.jpg',
        titleTxt: 'Habitacion\n Doble\t',
        perNight: 200,
        dateTxt: 'Sleeps 3 people + 2 children',
        roomData: RoomData(3, 2)),
    HotelListData(
        imagePath:
            'assets/images/room_7.jpg assets/images/room_8.jpg assets/images/room_9.jpg',
        titleTxt: 'Habitacion\n Familiar\t',
        perNight: 240,
        dateTxt: 'Sleeps 4 people + 4 children',
        roomData: RoomData(4, 4)),
    HotelListData(
        imagePath:
            'assets/images/room_10.jpg assets/images/room_11.jpg assets/images/room_12.jpg',
        titleTxt: 'Habitacion\n ejecutiva\t',
        perNight: 240,
        dateTxt: 'Sleeps 4 people + 4 children',
        roomData: RoomData(4, 4)),
    HotelListData(
        imagePath:
            'assets/images/room_11.jpg assets/images/room_1.jpg assets/images/room_2.jpg',
        titleTxt: 'Sonesta\nGold\t',
        perNight: 260,
        dateTxt: 'Sleeps 4 people + 4 children',
        roomData: RoomData(4, 4)),
  ];

  static List<HotelListData> hotelTypeList = [
    HotelListData(
      imagePath: Localfiles.hotel_Type_1,
      titleTxt: 'hotel_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_2,
      titleTxt: 'Backpacker_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_3,
      titleTxt: 'Resort_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_4,
      titleTxt: 'villa_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_5,
      titleTxt: 'apartment',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_6,
      titleTxt: 'guest_house',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_7,
      titleTxt: 'motel',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_8,
      titleTxt: 'accommodation',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_9,
      titleTxt: 'Bed_breakfast',
      isSelected: false,
    ),
  ];
  static List<HotelListData> lastsSearchesList = [
    HotelListData(
      imagePath: Localfiles.popular_4,
      titleTxt: 'London',
      roomData: RoomData(1, 3),
      date: DateText(12, 22),
      dateTxt: '12 - 22 Dec',
    ),
    HotelListData(
      imagePath: Localfiles.popular_1,
      titleTxt: 'Ecuador',
      roomData: RoomData(1, 3),
      date: DateText(12, 24),
      dateTxt: '12 - 24 Sep',
    ),
    HotelListData(
      imagePath: Localfiles.city_3,
      titleTxt: 'New York',
      roomData: RoomData(1, 3),
      date: DateText(20, 22),
      dateTxt: '20 - 22 Sep',
    ),
    HotelListData(
      imagePath: Localfiles.city_4,
      titleTxt: 'Tokyo',
      roomData: RoomData(12, 22),
      date: DateText(12, 22),
      dateTxt: '12 - 22 Nov',
    ),
    HotelListData(
      imagePath: Localfiles.city_5,
      titleTxt: 'Shanghai',
      roomData: RoomData(10, 15),
      date: DateText(10, 15),
      dateTxt: '10 - 15 Dec',
    ),
    HotelListData(
      imagePath: Localfiles.city_6,
      titleTxt: 'Moscow',
      roomData: RoomData(12, 14),
      date: DateText(12, 14),
      dateTxt: '12 - 14 Dec',
    ),
  ];
}
