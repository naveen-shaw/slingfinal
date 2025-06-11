
import 'package:mpay/common/app_array.dart';
import 'package:mpay/common/app_fonts.dart';
import 'package:mpay/common/languages/app_language.dart';
import 'package:mpay/common/session.dart';
import 'package:mpay/helper/navigation_class.dart';
import 'dart:io';
export 'package:mpay/common/screen_util/flutter_screen_util.dart';
export 'package:mpay/common/theme/index.dart';
export 'package:mpay/providers/index.dart';
export 'package:mpay/routes/index.dart';
export 'package:mpay/widgets/loading_component.dart';
export 'package:mpay/common/extension/spacing.dart';
export 'package:mpay/common/extension/widget_extension.dart';
export 'package:mpay/screens/auth_screen/splash_screen/layout/splash_layout.dart';
export 'package:mpay/widgets/common_button_auth.dart';
export 'package:mpay/widgets/common_text.dart';
export 'package:mpay/common/assets/index.dart';
export 'package:mpay/routes/screen_list.dart';
export 'package:flutter/material.dart';
export 'package:mpay/widgets/common_state.dart';
export 'package:mpay/widgets/text_form_filed_common.dart';
export 'package:mpay/widgets/text_widgets_common.dart';
export 'package:mpay/widgets/common_colors.dart';
export 'package:mpay/widgets/common_dialog.dart';
export 'package:mpay/common/extension/text_style_extensions.dart';
export 'package:mpay/package_list.dart';
export 'package:mpay/models/index.dart';
export 'package:flutter/physics.dart';
export '../../../../widgets/common_menu_button.dart';
export 'package:mpay/widgets/switch_common.dart';
import 'config.dart';
export '../../../../widgets/common_drop_down.dart';
export 'package:mpay/widgets/common_curve_clipper_class.dart';
export '../../../widgets/common_menu_widgets.dart';
export '../../../../widgets/common_transaction_list_layout.dart';
export 'package:mpay/widgets/auth_background_layout.dart';
export 'package:mpay/widgets/checkbox_common.dart';
export 'package:mpay/widgets/common_button.dart';
export 'package:mpay/widgets/common_app_bar.dart';
export 'package:mpay/widgets/sign_in_sign_up_rich_text.dart';
export '../../../widgets/directionality_rtl.dart';



Session session = Session();
AppFonts appFonts = AppFonts();
NavigationClass route = NavigationClass();
AppArray appArray = AppArray();
AppCss appCss = AppCss();
AppTheme get appTheme => _appTheme;
AppTheme _appTheme = AppTheme.fromType(ThemeType.light);


ThemeService appColor(context) {
 final  themeServices = Provider.of<ThemeService>(context, listen: false);
  return themeServices;
}

CurrencyProvider currency(context) {
  final currencyData = Provider.of<CurrencyProvider>(context, listen: false);
  return currencyData;
}

getSymbol(context) {
  final currencyData =
      Provider.of<CurrencyProvider>(context, listen: false).priceSymbol;

  return currencyData;
}

showLoading(context) async {
  Provider.of<LoadingProvider>(context, listen: false).showLoading();
}

hideLoading(context) async {
  Provider.of<LoadingProvider>(context, listen: false).hideLoading();
}

String language(context, text) {
  return AppLocalizations.of(context)!.translate(text);
}

Future<bool> isNetworkConnection() async {
  var connectivityResult = await Connectivity()
      .checkConnectivity(); //Check For Wifi or Mobile data is ON/OFF
  if (connectivityResult == ConnectivityResult.none) {
    return false;
  } else {
    final  result = await InternetAddress.lookup(
        'google.com'); //Check For Internet Connection
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}


