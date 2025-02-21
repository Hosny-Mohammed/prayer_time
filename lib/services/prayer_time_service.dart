import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../models/prayer_time_model.dart';
class PrayerTimeService{
 static Dio dio = Dio();

 static Future<PrayerTimeModel> getPrayerTimes() async{
  try{
   const url = 'https://api.aladhan.com/v1/timingsByCity?city=Giza&country=Egypt';
   final response = await dio.get(url);

   if(response.statusCode == 200){
    return PrayerTimeModel.fromJson(response.data);
   }else{
    throw Exception('Failed to load prayer times');
   }
  }catch(e){
   if (kDebugMode) {
     print("Error : $e");
   }
   throw Exception("Error fetching prayer times");
  }
 }
}