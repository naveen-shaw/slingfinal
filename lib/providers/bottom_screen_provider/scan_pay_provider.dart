import 'dart:developer';



import '../../config.dart';

class ScanPayProvider extends ChangeNotifier {
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  final String flashOn = 'FLASH ON'; // Define as String
  final String flashOff = 'FLASH OFF'; // Define as String
   String? flashState; // Declare as late String

  List contactList = [];


  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void init() {
    contactList = appArray.contactList;
    notifyListeners();
  }

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      launchURL("${scanData.code?.trim()}");
      log("scanData==>${scanData.code}");
      notifyListeners();
    });
  }

  // Initialize in the constructor
  ScanPayProvider() {
    flashState = flashOn;
  }
//flash on change method
  void flashOnTap() {
    if (controller != null) {
      controller!.toggleFlash();
      if (isFlashOn(flashState!)) {
        flashState = flashOff;
        notifyListeners();
      } else {
        flashState = flashOn;
        notifyListeners();
      }
    }
  }
  //flash on off method
  bool isFlashOn(String current) {
    return flashOn == current;
  }
//url launcher
  void launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
