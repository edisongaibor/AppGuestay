import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_ui/models/hotel_list_data.dart';

class PagoScreen extends StatefulWidget {
  final String hotelName;

  PagoScreen({Key? key, required this.hotelName}) : super(key: key);
  @override
  State<PagoScreen> createState() => _PagoScreenState();
}

class _PagoScreenState extends State<PagoScreen> with TickerProviderStateMixin {
  List<HotelListData> romeList = HotelListData.romeList;
  late AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
