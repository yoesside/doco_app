import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class TimeProvider extends ChangeNotifier {
    var _times = ["", "", ""];

    void init(){
        saveTimeAtPosition(0);
    }

    void saveTimeAtPosition(int index) {
        _times[index] = DateFormat('kk:mm').format(new DateTime.now());
        notifyListeners();
    }

    List<String> getTimes(){
        return this._times;
    }
}