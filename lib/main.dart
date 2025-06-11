import 'package:flutter/services.dart';
import 'common/languages/app_language.dart';
import 'config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, AsyncSnapshot<SharedPreferences> snapData) {
          if (snapData.hasData) {
            return MultiProvider(
                providers: [
                  ChangeNotifierProvider(
                      create: (_) => ThemeService(snapData.data!)),
                  ChangeNotifierProvider(
                      create: (_) => LanguageProvider(snapData.data!)),
                  ChangeNotifierProvider(create: (_) => CurrencyProvider()),
                  ChangeNotifierProvider(create: (_) => LoadingProvider()),
                  ChangeNotifierProvider(create: (_) => SplashProvider()),
                  ChangeNotifierProvider(create: (_) => OnBoardProvider()),
                  ChangeNotifierProvider(create: (_) => CardOnBoardProvider()),
                  ChangeNotifierProvider(create: (_) => SignInProvider()),
                  ChangeNotifierProvider(create: (_) => SignUpScreenProvider()),
                  ChangeNotifierProvider(create: (_) => SetPinProvider()),
                  ChangeNotifierProvider(
                      create: (_) => BottomNavigationProvider()),
                  ChangeNotifierProvider(create: (_) => HomeScreenProvider()),
                  ChangeNotifierProvider(create: (_) => ScanPayProvider()),
                  ChangeNotifierProvider(create: (_) => PayListProvider()),
                  ChangeNotifierProvider(
                      create: (_) => PaymentSuccessFullProvider()),
                  ChangeNotifierProvider(
                      create: (_) => TransferMoneyProvider()),
                  ChangeNotifierProvider(create: (_) => ContactPayProvider()),
                  ChangeNotifierProvider(create: (_) => AllServiceProvider()),
                  ChangeNotifierProvider(create: (_) => BillDetailsProvider()),
                  ChangeNotifierProvider(create: (_) => AllCardsProvider()),
                  ChangeNotifierProvider(create: (_) => NewsUpdateProvider()),
                  ChangeNotifierProvider(create: (_) => RequestProvider()),
                  ChangeNotifierProvider(
                      create: (_) => TransactionHistoryProvider()),
                  ChangeNotifierProvider(create: (_) => WithDrawProvider()),
                  ChangeNotifierProvider(
                      create: (_) => ProfileScreenProvider()),
                  ChangeNotifierProvider(create: (_) => InsightProvider()),
                  ChangeNotifierProvider(create: (_) => SettingProvider()),
                  ChangeNotifierProvider(create: (_) => SavingPlanProvider()),
                  ChangeNotifierProvider(
                      create: (_) => ProfileChangePassProvider()),
                  ChangeNotifierProvider(create: (_) => NotificationProvider()),
                  ChangeNotifierProvider(create: (_) => CryptoProvider()),
                  ChangeNotifierProvider(
                      create: (_) => CryptoSendListProvider()),
                  ChangeNotifierProvider(
                      create: (_) => CryptoCoinDetailsProvider()),
                  ChangeNotifierProvider(
                      create: (_) => CryptoMyPortfolioProvider()),
                  ChangeNotifierProvider(
                      create: (_) => CryptoBuyAndSellProvider()),
                  ChangeNotifierProvider(create: (_) => HelpScreenProvider()),
                ],
                child: Consumer<ThemeService>(builder: (context, theme, child) {

                  return Consumer<LanguageProvider>(
                      builder: (context, lang, child) {
                    return Consumer<CurrencyProvider>(
                        builder: (context, currency, child) {
                      return ScreenUtilInit(
                          child: MaterialApp(
                              title: appFonts.mpay,
                              debugShowCheckedModeBanner: false,
                              theme: AppTheme.fromType(ThemeType.light).themeData,
                              darkTheme: AppTheme.fromType(ThemeType.dark).themeData,
                              locale: lang.locale,
                              localizationsDelegates: const [
                                AppLocalizations.delegate,
                                AppLocalizationDelagate(),
                                GlobalMaterialLocalizations.delegate,
                                GlobalWidgetsLocalizations.delegate,
                                GlobalCupertinoLocalizations.delegate
                              ],
                              supportedLocales: appArray.localList,
                              themeMode: theme.theme,
                              initialRoute: "/",
                              routes: appRoute.route));
                    });
                  });
                }));
          } else {
            return ScreenUtilInit(
              child: MaterialApp(
                  theme: AppTheme.fromType(ThemeType.light).themeData,
                  darkTheme: AppTheme.fromType(ThemeType.dark).themeData,
                  themeMode: ThemeMode.light,
                  debugShowCheckedModeBanner: false,
                  home: const SplashLayout()),
            );
          }
        });
  }
}
