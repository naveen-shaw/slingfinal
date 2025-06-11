import 'dart:developer';

import 'package:mpay/config.dart';

class ContactPayProvider extends ChangeNotifier {
  TextEditingController controller = TextEditingController();
  bool sendButton = false;
  FocusNode textFocusNode = FocusNode();
  List messageList = [];

// on back tap function
backOnTap (context){
messageList = appArray.messageList;
  notifyListeners();
  route.pop(context);
}

//send message changes
  void setMessage(context) {
    // Extract titles from the data array
    messageList.add( {
      "title":controller.text,
      "time": "8:47 am",
      "type": "source"
    });
    controller.clear();
    notifyListeners();
  }

  //send text changes
textFiledChange(value){
  if (value.isNotEmpty) {
    sendButton = true;
  } else {
    sendButton = false;
  }
}
  // Initialize list
  onInit(){
    messageList = appArray.messageList;
    notifyListeners();
    log("messageList :$messageList");
  }
}
