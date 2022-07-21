import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_ui/models/hotel_list_data.dart';
import 'package:flutter_hotel_booking_ui/modules/bottom_tab/bottom_tab_screen.dart';
import 'package:flutter_hotel_booking_ui/modules/reserva_hotel/pantalla_inicio_hotel.dart';
import 'package:flutter_hotel_booking_ui/modules/detalles_hotel/detalles.dart';
import 'package:flutter_hotel_booking_ui/modules/detalles_hotel/pantalla_lista_revision.dart';
import 'package:flutter_hotel_booking_ui/modules/detalles_hotel/pantalla_habitacion_reserva.dart';
import 'package:flutter_hotel_booking_ui/modules/login/olvidar_contrasenia.dart';
import 'package:flutter_hotel_booking_ui/modules/login/login_screen.dart';
import 'package:flutter_hotel_booking_ui/modules/login/registro_cuenta.dart';
import 'package:flutter_hotel_booking_ui/routes/routes.dart';

class NavigationServices {
  NavigationServices(this.context);

  final BuildContext context;

  Future<dynamic> _pushMaterialPageRoute(Widget widget,
      {bool fullscreenDialog: false}) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => widget, fullscreenDialog: fullscreenDialog),
    );
  }

  void gotoSplashScreen() {
    Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.Splash, (Route<dynamic> route) => false);
  }

  void gotoIntroductionScreen() {
    Navigator.pushNamedAndRemoveUntil(context, RoutesName.IntroductionScreen,
        (Route<dynamic> route) => false);
  }

  void gotoPagoScreen() {
    Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.PagoScreen, (Route<dynamic> route) => false);
  }

  Future<dynamic> gotoLoginScreen() async {
    return await _pushMaterialPageRoute(LoginScreen());
  }

  Future<dynamic> gotoTabScreen() async {
    return await _pushMaterialPageRoute(BottomTabScreen());
  }

  Future<dynamic> gotoSignScreen() async {
    return await _pushMaterialPageRoute(SignUpScreen());
  }

  Future<dynamic> gotoForgotPassword() async {
    return await _pushMaterialPageRoute(ForgotPasswordScreen());
  }

  Future<dynamic> gotoHotelHomeScreen() async {
    return await _pushMaterialPageRoute(HotelHomeScreen());
  }

  Future<dynamic> gotoRoomBookingScreen(String hotelname) async {
    return await _pushMaterialPageRoute(
        RoomBookingScreen(hotelName: hotelname));
  }

  Future<dynamic> gotoHotelDetailes(HotelListData hotelData) async {
    return await _pushMaterialPageRoute(HotelDetailes(
      hotelData: hotelData,
    ));
  }

  Future<dynamic> gotoReviewsListScreen() async {
    return await _pushMaterialPageRoute(ReviewsListScreen());
  }
}
