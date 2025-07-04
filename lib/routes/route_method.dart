import '../config.dart';

class AppRoute {
  Map<String, Widget Function(BuildContext)> route = {
    routeName.splash: (p0) => const SplashScreen(),
    routeName.splash1: (p0) => const SecSplashScreen(),
    routeName.onBoard: (p0) => const OnBoardScreen(),
    routeName.onBoardCard: (p0) => const CardsOnboardScreen(),
    routeName.signInScreen: (p0) => const SignInScreen(),
    routeName.otpScreen: (p0) => const OTPScreen(),
    routeName.forgetScreen: (p0) => const ForgetPinScreen(),
    routeName.resetPinScreen: (p0) => const ResetPinScreen(),
    routeName.successFullyResetScreen: (p0) => const SuccessFullyResetScreen(),
    routeName.signupScreen: (p0) => const SignupScreen(),
    routeName.personalIdentityScreen: (p0) => const PersonalIdentityScreen(),
    routeName.confirmIdentityScreen: (p0) => const ConfirmIdentityScreen(),
    routeName.addManuallyDetails: (p0) => const AddManuallyDetails(),
    routeName.setPinScreen: (p0) => const SetPinScreen(),
    routeName.completeVerificationScreen: (p0) => const CompleteVerificationScreen(),
    routeName.helpScreen: (p0) => const HelpScreen(),
    routeName.bottomBarLayout: (p0) => const BottomBarLayout(),
    routeName.allServicesPage: (p0) => const AllServicesPage(),
    routeName.scanPayScreen: (p0) => const ScanPayScreen(),
    routeName.payingMoneyScreen: (p0) => const PayingMoneyScreen(),
    routeName.payingLoadingScreen: (p0) => const PayingLoadingScreen(),
    routeName.paymentSuccessFullScreen: (p0) => const PaymentSuccessFullScreen(),
    routeName.emptyNotificationScreen: (p0) => const EmptyNotificationScreen(),
    routeName.notificationScreen: (p0) => const NotificationScreen(),
    routeName.receivedMoneyScreen: (p0) => const ReceivedMoneyScreen(),
    routeName.transferMoneyScreen: (p0) => const TransferMoneyScreen(),
    routeName.recentContactTransfer: (p0) => const RecentContactTransfer(),
    routeName.payeeListScreen: (p0) => const PayeeListScreen(),
    routeName.searchScreen: (p0) => const SearchScreen(),
    routeName.viewTransactionScreen: (p0) => const ViewTransactionScreen(),
    routeName.messageScreen: (p0) => const MessageScreen(),
    routeName.billDetailsScreen: (p0) => const BillDetailsScreen(),
    routeName.billMakePayment: (p0) => const BillMakePayment(),
    routeName.requestScreen: (p0) => const RequestScreen(),
    routeName.withdrawScreen: (p0) => const WithdrawScreen(),
    routeName.transactionHistoryScreen: (p0) => const TransactionHistoryScreen(),
    routeName.allCardScreen: (p0) => const AllCardScreen(),
    routeName.savingPlanScreen: (p0) => const SavingPlanScreen(),
    routeName.newsUpdateScreen: (p0) => const NewsUpdateScreen(),
    routeName.newsDescriptionScreen: (p0) => const NewsDescriptionScreen(),
    routeName.myProfileLayout: (p0) => const MyProfileLayout(),
    routeName.settingScreen: (p0) => const SettingScreen(),
    routeName.profileChangePassScreen: (p0) => const ProfileChangePassScreen(),
    routeName.cryptoSendScreen: (p0) => const CryptoSendScreen(),
    routeName.cryptoRequestScreen: (p0) => const CryptoRequestScreen(),
    routeName.cryptoWithdrawScreen: (p0) => const CryptoWithdrawScreen(),
    routeName.cryptoCoinDetailsScreen: (p0) => const CryptoCoinDetailsScreen(),
    routeName.cryptoMyPortfolioScreen: (p0) => const CryptoMyPortfolioScreen(),
    routeName.cryptoBuySellScreen: (p0) => const CryptoBuySellScreen(),
    routeName.cryptoExchangeScreen: (p0) => const CryptoExchangeScreen(),
    routeName.noInternetScreen: (p0) => const NoInternetScreen(),

  };
}
