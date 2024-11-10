import 'package:flutter/cupertino.dart';
import 'package:prayer_time/models/prayer_time_model.dart';
import 'package:prayer_time/services/prayer_time_service.dart';

class PrayerTimeProvider extends ChangeNotifier {
  PrayerTimeModel? prayerTimeModel;

  Future<void> fetchPrayerTimes() async{
    prayerTimeModel = await PrayerTimeService.getPrayerTimes();
    notifyListeners();
  }
}