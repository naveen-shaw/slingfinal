
import 'dart:developer';

import '../../config.dart';

class NewsUpdateProvider extends ChangeNotifier{
  List newsUpdateList = [];

  dynamic data;
  dynamic eData;

  // Initialize list
  init(){
    newsUpdateList = appArray.newsUpdateList;
    notifyListeners();
  }
  // get data
  getArgument(context) async{
    dynamic data = ModalRoute.of(context)!.settings.arguments;
    log("message==>$eData");

    eData = data['data'];
    log("eData==>$eData");
    notifyListeners();
  }
}