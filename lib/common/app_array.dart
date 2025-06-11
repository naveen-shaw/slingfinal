import '../config.dart';

class AppArray {
  var bottomNavigationBarList = [
    {
      "title": appFonts.mpay,
      "icon": eSvgAssets.cards,
      "iconDark": eSvgAssets.cardsDark
    },
    {
      "title": appFonts.crypto,
      "icon": eSvgAssets.bitcoin,
      "iconDark": eSvgAssets.bitcoinDark
    },
    {
      "title": appFonts.insight,
      "icon": eSvgAssets.insight,
      "iconDark": eSvgAssets.insightDark
    },
    {
      "title": appFonts.profile,
      "icon": eSvgAssets.profile,
      "iconDark": eSvgAssets.profileDark
    }
  ];

  var localList = <Locale>[
    const Locale('en'),
    const Locale('ar'),
    const Locale('fr'),
    const Locale('hi'),
  ];

  var currencyList = [
    {
      "id": 1,
      "code": "USD",
      "symbol": "\$",
      "no_of_decimal": "2.00",
      "exchange_rate": "1.00",
      "thousands_separator": "comma",
      "decimal_separator": "comma",
      "system_reserve": "0",
      "status": "1",
      "created_by_id": null,
      "created_at": "2023-09-08T16:55:08.000000Z",
      "updated_at": "2023-11-13T03:43:17.000000Z",
      "deleted_at": null,
      "title": appFonts.usDollar
    },
    {
      "id": 2,
      "code": "INR",
      "symbol": "₹",
      "no_of_decimal": "2.00",
      "exchange_rate": "83.24",
      "thousands_separator": "comma",
      "decimal_separator": "comma",
      "system_reserve": "1",
      "status": "1",
      "created_by_id": null,
      "created_at": "2023-09-08T16:55:08.000000Z",
      "updated_at": "2023-11-13T03:43:17.000000Z",
      "deleted_at": null,
      "title": appFonts.inr
    },
    {
      "id": 3,
      "code": "GBP",
      "symbol": "£",
      "no_of_decimal": "2.00",
      "exchange_rate": "100.00",
      "thousands_separator": "comma",
      "decimal_separator": "comma",
      "system_reserve": "0",
      "status": "1",
      "created_by_id": null,
      "created_at": "2023-09-08T16:55:08.000000Z",
      "updated_at": "2023-09-08T16:55:08.000000Z",
      "deleted_at": null,
      "title": appFonts.pound
    },
    {
      "id": 4,
      "code": "EUR",
      "symbol": "€",
      "no_of_decimal": "2.00",
      "exchange_rate": "0.01",
      "thousands_separator": "comma",
      "decimal_separator": "comma",
      "system_reserve": "0",
      "status": "1",
      "created_by_id": null,
      "created_at": "2023-09-08T16:55:08.000000Z",
      "updated_at": "2023-09-08T16:55:08.000000Z",
      "deleted_at": null,
      "title": appFonts.euro
    }
  ];

  var drawerList = [
    {"title": appFonts.home, "icon": eSvgAssets.homeDrawer},
    {"title": appFonts.insight, "icon": eSvgAssets.barChartDrawer},
    {"title": appFonts.cards, "icon": eSvgAssets.cardDrawer},
    {"title": appFonts.notification, "icon": eSvgAssets.bellDrawer},
    {"title": appFonts.profile, "icon": eSvgAssets.userDrawer},
    {"title": appFonts.setting, "icon": eSvgAssets.settingsDrawer},
    {"title": appFonts.noInternet, "icon": eSvgAssets.noInternetIcon},
    {"title": appFonts.logOut, "icon": eSvgAssets.logoutDrawer},
  ];

  // language list
  var languageList = [
    {
      "title": appFonts.english,
      "locale": const Locale('en', 'EN'),
      "icon": eImageAssets.en,
      "code": "en"
    },
    {
      "title": appFonts.arabic,
      "locale": const Locale("ar", 'AE'),
      "icon": eImageAssets.ar,
      "code": "ar"
    },
    {
      "title": appFonts.french,
      "locale": const Locale('fr', 'FR'),
      "icon": eImageAssets.fr,
      "code": "fr"
    },
    {
      "title": appFonts.hindi,
      "locale": const Locale("hi", 'HI'),
      "icon": eImageAssets.es,
      "code": "es"
    },
  ];

  var optionList = [
    {
      "title": appFonts.transfer,
      "icon": eSvgAssets.transfer,
    },
    {
      "title": appFonts.bill,
      "icon": eSvgAssets.bill,
      "color": appTheme.darkText
    },
    {
      "title": appFonts.request,
      "icon": eSvgAssets.download,
      "color": appTheme.darkText
    },
    {
      "title": appFonts.withdraw,
      "icon": eSvgAssets.withdraw,
      "color": appTheme.darkText
    }
  ];
  var selectService = [
    {
      "title": appFonts.electricity,
      "icon": eSvgAssets.electricity,
    },
    {
      "title": appFonts.water,
      "icon": eSvgAssets.droplet,
    },
    {
      "title": appFonts.internet,
      "icon": eSvgAssets.wifi,
    },
    {
      "title": appFonts.television,
      "icon": eSvgAssets.television,
    },
    {
      "title": appFonts.investment,
      "icon": eSvgAssets.barchart,
    },
    {
      "title": appFonts.mobile,
      "icon": eSvgAssets.smartphone,
    },
    {
      "title": appFonts.medical,
      "icon": eSvgAssets.medical,
    },
    {
      "title": appFonts.other,
      "icon": eSvgAssets.other,
    }
  ];
  var quickSend = [
    {
      "title": appFonts.add,
      "icon": eImageAssets.firstQuick,
    },
    {
      "title": appFonts.connie,
      "icon": eImageAssets.secQuick,
    },
    {
      "title": appFonts.kristin,
      "icon": eImageAssets.thirdQuick,
    },
    {
      "title": appFonts.courtney,
      "icon": eImageAssets.fourthQuick,
    },
    {
      "title": appFonts.dianne,
      "icon": eImageAssets.secQuick,
    },
  ];
  var contactList = [
    {
      "title": appFonts.dianne,
      "icon": eImageAssets.secQuick,
    },
    {
      "title": appFonts.dianne,
      "icon": eImageAssets.secQuick,
    },
    {
      "title": appFonts.connie,
      "icon": eImageAssets.thirdQuick,
    },
    {
      "title": appFonts.courtney,
      "icon": eImageAssets.fourthQuick,
    },
    {
      "title": appFonts.kristin,
      "icon": eImageAssets.secQuick,
    },
  ];
  var transaction = [
    {
      "title": appFonts.amazonPrime,
      "subTitle": appFonts.subscription,
      "icon": eSvgAssets.amazon,
      "price": "199.99",
      "time": "8:45 am",
    },
    {
      "title": appFonts.appleStore,
      "subTitle": appFonts.installment,
      "icon": eSvgAssets.apple,
      "price": "59.85",
      "time": "9:00 pm",
    },
    {
      "title": appFonts.groceryShop,
      "subTitle": appFonts.purchase,
      "icon": eSvgAssets.shop,
      "price": "55.30",
      "time": "20 Mar",
    },
    {
      "title": appFonts.snapchatSub,
      "subTitle": appFonts.billPay,
      "icon": eSvgAssets.snapchat,
      "price": "18.01",
      "time": "19 Mar",
    },
    {
      "title": appFonts.spotifyMusic,
      "subTitle": appFonts.transfer,
      "icon": eSvgAssets.spotify,
      "price": "19.20",
      "time": "18 Mar",
    },
  ];
  var billDetails = [
    {
      "title": appFonts.airtel,
      "subTitle": appFonts.prePaid,
      "icon": eSvgAssets.billVector,
      "price": "69.49",
    },
    {
      "title": appFonts.apple,
      "subTitle": appFonts.subscription,
      "icon": eSvgAssets.billApple,
      "price": "49.85",
    },
    {
      "title": appFonts.tv,
      "subTitle": appFonts.connection,
      "icon": eSvgAssets.billTv,
      "price": "99.99",
    },
    {
      "title": appFonts.torrent,
      "subTitle": appFonts.electricity,
      "icon": eSvgAssets.billElectricity,
      "price": "58.45",
    },
  ];
  var savingPlan = [
    {
      "title": appFonts.newCar,
      "subTitle": appFonts.amountLeft,
      "icon": eSvgAssets.savingCar,
      "price": "2000.00",
    },
    {
      "title": appFonts.grandHome,
      "subTitle": appFonts.amountLeft,
      "icon": eSvgAssets.savingHome,
      "price": "5000.00",
    }
  ];
  var newsUpdate = [
    {
      "title": appFonts.saveAndInvest,
      "date": "13 Feb, 2023",
      "icon": eImageAssets.newsUpdate1,
      "name": appFonts.smith,
    },
    {
      "title": appFonts.howToGetMore,
      "date": "10 Jan, 2023",
      "icon": eImageAssets.newsUpdate2,
      "name": appFonts.laila,
    },
    {
      "title": appFonts.tipsOnExpand,
      "date": "28 Dec, 2022",
      "icon": eImageAssets.newsUpdate3,
      "name": appFonts.brunot,
    }
  ];

  var allServiceList = [
    {
      "title": appFonts.bills,
      "list": [
        {
          "title": appFonts.electricity,
          "icon": eSvgAssets.electricity,
        },
        {
          "title": appFonts.water,
          "icon": eSvgAssets.droplet,
        },
        {
          "title": appFonts.internet,
          "icon": eSvgAssets.wifi,
        },
        {
          "title": appFonts.television,
          "icon": eSvgAssets.television,
        },
        {
          "title": appFonts.mobile,
          "icon": eSvgAssets.smartphone,
        },
        {
          "title": appFonts.eWallet,
          "icon": eSvgAssets.eWallet,
        }
      ]
    },
    {
      "title": appFonts.otherOption,
      "list": [
        {
          "title": appFonts.investment,
          "icon": eSvgAssets.barchart,
        },
        {
          "title": appFonts.deals,
          "icon": eSvgAssets.deals,
        },
        {
          "title": appFonts.medical,
          "icon": eSvgAssets.otherMedical,
        },
        {
          "title": appFonts.car,
          "icon": eSvgAssets.car,
        },
        {
          "title": appFonts.shopping,
          "icon": eSvgAssets.shoppingBag,
        },
        {
          "title": appFonts.games,
          "icon": eSvgAssets.game,
        }
      ]
    }
  ];
  var notificationList = [
    {
      "title": appFonts.today,
      "list": [
        {
          "title": appFonts.paymentReceived,
          "name": appFonts.dianneChristian,
          "subTitle": "",
          "icon": eImageAssets.secQuick,
          "type": "received",
          "price": "25.85",
          "time": "9:02 pm",
        },
        {
          "title": appFonts.paymentRequest,
          "name": appFonts.connieWilliams,
          "subTitle": "",
          "icon": eImageAssets.thirdQuick,
          "type": "request",
          "price": "56.48",
          "time": "8:45 pm",
        },
        {
          "title": appFonts.savingAlert,
          "name": appFonts.bank,
          "subTitle": "",
          "icon": eImageAssets.warn,
          "price": "",
          "type": "expense",
          "time": "8:30 pm",
        },
      ]
    },
    {
      "title": appFonts.yesterday,
      "list": [
        {
          "title": appFonts.paymentSend,
          "name": appFonts.kristinaJohny,
          "subTitle": "",
          "icon": eImageAssets.fourthQuick,
          "type": "send",
          "price": "45.56",
          "time": "5:12 am",
        },
        {
          "title": appFonts.securityAlert,
          "name": appFonts.bank,
          "subTitle": appFonts.vivo1860,
          "icon": eImageAssets.lock,
          "type": "account",
          "price": "",
          "time": "5:12 am",
        }
      ]
    }
  ];

  var receiveMoneyList = [
    {
      "amount": "49.85",
      "Date": "10 Feb, 2023",
      "time": "9:02 pm",
      "receiverForm": appFonts.dianneChristian,
      "bankName": appFonts.hdfcBank
    }
  ];
  var selectBankList = [
    {
      "amount": "25263.36",
      "accountNumber": "**** **** **** 2563",
      "isCheck": false
    },
    {
      "amount": "85256.25",
      "accountNumber": "**** **** **** 1235",
      "isCheck": false
    },
  ];
  var recentPayees = [
    {"title": appFonts.add, "icon": eImageAssets.firstQuick, "pin": ""},
    {"title": appFonts.higgins, "icon": eImageAssets.higgins, "pin": "**** 56"},
    {"title": appFonts.trunk, "icon": eImageAssets.trunk, "pin": "**** 78"},
    {"title": appFonts.tanner, "icon": eImageAssets.tanner, "pin": "**** 15"},
    {"title": appFonts.dianne, "icon": eImageAssets.secQuick, "pin": "**** 56"},
  ];
  var amountList = ["50.00", "100.00", "150.00"];

  var addPayeeList = [
    {
      "name": appFonts.higainWilliams,
      "accountNumber": "**** **** **** 1256",
      "image": eImageAssets.higginsWilliams
    },
    {
      "name": appFonts.michaelKnight,
      "accountNumber": "**** **** **** 4555",
      "image": eImageAssets.michaelKnight
    },
    {
      "name": appFonts.hannibalSmith,
      "accountNumber": "**** **** **** 7859",
      "image": eImageAssets.hannibalSmith
    },
    {
      "name": appFonts.cameronWilliamson,
      "accountNumber": "**** **** **** 1456",
      "image": eImageAssets.cameronWilliamson
    },
    {
      "name": appFonts.angusMacGyver,
      "accountNumber": "**** **** **** 7596",
      "image": eImageAssets.angusMacGyver
    },
    {
      "name": appFonts.brooklynSimmons,
      "accountNumber": "**** **** **** 5648",
      "image": eImageAssets.brooklynSimmons
    },
    {
      "name": appFonts.peterThornton,
      "accountNumber": "**** **** **** 7456",
      "image": eImageAssets.peterThornton
    },
  ];

  var viewTransaction = [
    {
      "title": appFonts.projectTip,
      "date": "28 Feb, 2023",
      "amount": "30.99",
      "time": "8:45 am",
      "icon": eSvgAssets.tProjectTip,
    },
    {
      "title": appFonts.transfer,
      "date": "20 Feb, 2023",
      "amount": "100.89",
      "time": "9:00 pm",
      "icon": eSvgAssets.tTransfer,
    },
    {
      "title": appFonts.buyGrocery,
      "date": "18 Jan, 2023",
      "amount": "18.10",
      "time": "2:78 am",
      "icon": eSvgAssets.giftEntypoShop,
    },
    {
      "title": appFonts.giftForMronWedding,
      "date": "10 Jan, 2023",
      "amount": "8.01",
      "time": "6:15 pm",
      "icon": eSvgAssets.tGift,
    },
    {
      "title": appFonts.commission,
      "date": "10 Jan, 2023",
      "amount": "10.47",
      "time": "6:15 pm",
      "icon": eSvgAssets.commission,
    },
    {
      "title": appFonts.buyFruit,
      "date": "10 Jan, 2023",
      "amount": "5.47",
      "time": "6:15 pm",
      "icon": eSvgAssets.tShoppingBag,
    },
    {
      "title": appFonts.coffeeTreat,
      "date": "10 Jan, 2023",
      "amount": "10.47",
      "time": "6:15 pm",
      "icon": eSvgAssets.coffee,
    }
  ];

  //messageList
  var messageList = [
    {"title": appFonts.hey, "time": "8:47 am", "type": "source"},
    {"title": appFonts.hey1, "time": "8:47 am", "type": "receiver"},
    {"title": appFonts.canYouPlease, "time": "8:47 am", "type": "source"},
    {"title": appFonts.yesWhyNot, "time": "8:47 am", "type": "receiver"},
    {"title": appFonts.thankYouSoMuch, "time": "8:48 am", "type": "source"},
  ];

  var lastPaid = [
    {
      "title": appFonts.mobile,
      "date": "20 Jan, 2023",
      "price": "49.99",
      "time": "8:45 am",
      "icon": eSvgAssets.smartphone,
    },
    {
      "title": appFonts.electricity,
      "date": "19 Jan, 2023",
      "price": "66.08",
      "time": "9:23 am",
      "icon": eSvgAssets.electricity,
    },
    {
      "title": appFonts.water,
      "date": "18 Jan, 2023",
      "price": "85.12",
      "time": "2:45 pm",
      "icon": eSvgAssets.droplet,
    },
    {
      "title": appFonts.television,
      "date": "20 Jan, 2023",
      "price": "14.89",
      "time": "3:00 pm",
      "icon": eSvgAssets.television,
    },
  ];

  var transactionHistory = [
    {
      "dayTitle": appFonts.today,
      "list": [
        {
          "title": appFonts.amazonPrime,
          "subTitle": appFonts.subscription,
          "icon": eSvgAssets.amazon,
          "price": "199.99",
          "time": "8:45 am",
        },
        {
          "title": appFonts.appleStore,
          "subTitle": appFonts.installment,
          "icon": eSvgAssets.apple,
          "price": "59.85",
          "time": "8:30 am",
        }
      ]
    },
    {
      "dayTitle": appFonts.yesterday,
      "list": [
        {
          "title": appFonts.groceryShop,
          "subTitle": appFonts.purchase,
          "icon": eSvgAssets.shop,
          "price": "55.30",
          "time": "2:18 am",
        },
        {
          "title": appFonts.flipkart,
          "subTitle": appFonts.billPay,
          "icon": eSvgAssets.flipkart,
          "price": "18.01",
          "time": "2:15 am",
        },
        {
          "title": appFonts.diane,
          "subTitle": appFonts.transfer,
          "icon": eSvgAssets.spotify,
          "price": "19.20",
          "time": "3:00 pm",
        },
      ]
    },
    {
      "dayTitle": "12 Feb,2023",
      "list": [
        {
          "title": appFonts.fruitShop,
          "subTitle": appFonts.purchase,
          "icon": eSvgAssets.shop,
          "price": "14.31",
          "time": "2:18 am",
        }
      ]
    },
  ];
  var thLayout = [
    {
      "dayTitle": "12th May to 25th Jan",
      "list": [
        {
          "title": appFonts.amazonPrime,
          "subTitle": appFonts.subscription,
          "icon": eSvgAssets.amazon,
          "price": "199.99",
          "time": "8:45 am",
        },
        {
          "title": appFonts.appleStore,
          "subTitle": appFonts.installment,
          "icon": eSvgAssets.apple,
          "price": "59.85",
          "time": "8:30 am",
        }
      ]
    }
  ];

  var amazonBillDetail = [
    {"title": appFonts.paymentStatus, "status": appFonts.success},
    {"title": appFonts.date, "status": "18 Jan, 2023"},
    {"title": appFonts.from, "status": "**** **** **** 2563"},
    {"title": appFonts.to, "status": appFonts.amazonPrime},
    {"title": appFonts.transactionCategory, "status": appFonts.billPay},
    {"title": appFonts.amount, "status": "199.99"},
  ];

  var allCards = [
    {
      "bg": eImageAssets.purpleCard,
      "visa": eSvgAssets.visa,
      "accountNumber": "**** **** **** 2563",
      "name": appFonts.survanaWilliams,
      "amount": "25000.89",
      "expDate": "12/24",
    },
    {
      "bg": eImageAssets.pinkCard,
      "visa": eSvgAssets.allCardRounds,
      "accountNumber": "**** **** **** 8956",
      "name": appFonts.survanaWilliams,
      "amount": "15256.25",
      "expDate": "08/24",
    },
    {
      "bg": eImageAssets.greenCard,
      "visa": eSvgAssets.visa,
      "accountNumber": "**** **** **** 2563",
      "name": appFonts.survanaWilliams,
      "amount": "5256.89",
      "expDate": "02/24",
    },
    {
      "bg": eImageAssets.blueCard,
      "visa": eSvgAssets.visa,
      "accountNumber": "**** **** **** 2563",
      "name": appFonts.survanaWilliams,
      "amount": "18000.25",
      "expDate": "12/24",
    },
  ];

  var savingPlanList = [
    {
      "title": appFonts.newCar,
      "subTitle": appFonts.amountLeft,
      "icon": eSvgAssets.savingCar,
      "price": "2000.00",
      "dueAmount": "3500.00"
    },
    {
      "title": appFonts.grandHome,
      "subTitle": appFonts.amountLeft,
      "icon": eSvgAssets.savingHome,
      "price": "5000.00",
      "dueAmount": "3500.00"
    },
    {
      "title": appFonts.gamingConsole,
      "subTitle": appFonts.amountLeft,
      "icon": eSvgAssets.savingGame,
      "price": "499.33",
      "dueAmount": "3500.00"
    },
    {
      "title": appFonts.education,
      "subTitle": appFonts.amountLeft,
      "icon": eSvgAssets.savingVector,
      "price": "452.00",
      "dueAmount": "3500.00"
    },
    {
      "title": appFonts.television,
      "subTitle": appFonts.amountLeft,
      "icon": eSvgAssets.savingTv,
      "price": "1562.00",
      "dueAmount": "3500.00"
    },
    {
      "title": appFonts.birthdayGift,
      "subTitle": appFonts.amountLeft,
      "icon": eSvgAssets.savingGift,
      "price": "1452.00",
      "dueAmount": "3500.00"
    }
  ];
  var newsUpdateList = [
    {
      "title": appFonts.saveAndInvest,
      "date": "13 Feb, 2023",
      "icon": eImageAssets.newsUpdate1,
      "name": appFonts.smith,
      "des": appFonts.throughSavingMoney
    },
    {
      "title": appFonts.howToGetMore,
      "date": "10 Jan, 2023",
      "icon": eImageAssets.newsUpdate2,
      "name": appFonts.laila,
      "des": appFonts.throughSavingMoney
    },
    {
      "title": appFonts.tipsOnExpand,
      "date": "28 Dec, 2022",
      "icon": eImageAssets.newsUpdate3,
      "name": appFonts.brunot,
      "des": appFonts.throughSavingMoney
    },
    {
      "title": appFonts.rulesYouNeed,
      "date": "12 Dec, 2022",
      "icon": eImageAssets.newsUpdate4,
      "name": appFonts.swiidern,
      "des": appFonts.throughSavingMoney
    },
    {
      "title": appFonts.followTheFinancial,
      "date": "01 Nov, 2022",
      "icon": eImageAssets.newsUpdate5,
      "name": appFonts.merion,
      "des": appFonts.throughSavingMoney
    },
  ];
  var profileList = [
    {
      "title": appFonts.myAccount,
      "icon": eSvgAssets.profileUserIcon,
      "DarkIcon": eSvgAssets.profileUserIconDark
    },
    {
      "title": appFonts.myCards,
      "icon": eSvgAssets.profileMyCardsIcon,
      "DarkIcon": eSvgAssets.profileMyCardsIconDark
    },
    {
      "title": appFonts.setting,
      "icon": eSvgAssets.profileSettingsIcon,
      "DarkIcon": eSvgAssets.profileSettingsIconDark
    },
    {
      "title": appFonts.changePassword,
      "icon": eSvgAssets.profileLockIcon,
      "DarkIcon": eSvgAssets.profileLockIconDark
    },
    {
      "title": appFonts.helpCenter,
      "icon": eSvgAssets.profileHelpIcon,
      "DarkIcon": eSvgAssets.profileHelpIconDark
    },
    {
      "title": appFonts.logOut,
      "icon": eSvgAssets.profileLogoutIcon,
      "DarkIcon": eSvgAssets.profileLogoutIconDark
    },
  ];
  var insightList = [
    {
      "title": appFonts.shopping,
      "price": "15000.10",
      "icon": eSvgAssets.shopping
    },
    {"title": appFonts.food, "price": "25200.00", "icon": eSvgAssets.food},
    {"title": appFonts.health, "price": "5000.03", "icon": eSvgAssets.health},
    {
      "title": appFonts.entertainment,
      "price": "7053.00",
      "icon": eSvgAssets.entertainment
    },
  ];

  var myPortfolio = [
    {
      "title": appFonts.bitcoin,
      "per": "+11%",
      "icon": eSvgAssets.bitcoinSVGIcon,
      "iconDark": eSvgAssets.bitcoinSVGIcon,
      "price": "45875.98",
      "upDownPrice": "-12.77 (8%)",
      "mapIcons": eSvgAssets.mapSVG,
    },
    {
      "title": appFonts.ethereum,
      "per": "-25%",
      "icon": eSvgAssets.ethereumSVGIcon,
      "iconDark": eSvgAssets.ethereumSVGDarkIcon,
      "price": "20256.28",
      "upDownPrice": "+10.77 (10%)",
      "mapIcons": eSvgAssets.redMapSVG,
    },
  ];
  var cryptoList = [
    {"icon": eSvgAssets.cryptoSend, "title": appFonts.send},
    {"icon": eSvgAssets.request, "title": appFonts.request},
    {"icon": eSvgAssets.withdraw, "title": appFonts.withdraw},
    {"icon": eSvgAssets.exchange, "title": appFonts.exchange},
  ];

  var buyAndSellHistory = [
    {
      "title": appFonts.ethereum,
      "subTitle": appFonts.eth,
      'price': '10265.16',
      "per": "+5.17% ",
      'icon': eSvgAssets.ethereumBG
    },
    {
      "title": appFonts.bitcoin,
      "subTitle": appFonts.btc,
      'price': '59.85',
      "per": "+1.51% ",
      'icon': eSvgAssets.bitcoinBg
    },
    {
      "title": appFonts.litecoin,
      "subTitle": appFonts.ltc,
      'price': '18.01',
      "per": "-0.26% ",
      'icon': eSvgAssets.litecoin
    },
    {
      "title": appFonts.binance,
      "subTitle": appFonts.bnb,
      'price': '55.30',
      "per": "+4.75% ",
      'icon': eSvgAssets.binance
    },
    {
      "title": appFonts.tether,
      "subTitle": appFonts.usdt,
      'price': '19.20',
      "per": "-0.03% ",
      'icon': eSvgAssets.tetherBG
    },
  ];
  var hireAssistance = [
    eImageAssets.hireAssistance,
    eImageAssets.referYourFriends
  ];
  var bitcoinsAmount = [
    {
      'amount': '45875.98',
      'subTitle': 'Bitcoin | USDT',
      'per': '+11%',
      'subPer': '-12.77 (8%)',
      'icon': eSvgAssets.bitcoinSVGIcon
    }
  ];
  var staticsList = [
    {'title': 'Current price', 'price': '45875.98'},
    {'title': 'Market Cap', 'price': '44859.85'},
    {'title': 'High', 'price': '3456'},
    {'title': 'Low', 'price': '2147'},
    {'title': 'Volume 24h', 'price': '3456'},
  ];
  var coinBuySellHistory = [
    {
      'icon': eSvgAssets.buy,
      'title': appFonts.bitcoin,
      'price': '85.45',
      'buy&sellID': 'Buy ID : #4598',
      'date&Time': 'Today - 1:00pm'
    },
    {
      'icon': eSvgAssets.sell,
      'title': appFonts.bitcoin,
      'price': '50.52',
      'buy&sellID': 'Sell ID : #4596',
      'date&Time': '22 Mar - 8:12am'
    },
    {
      'icon': eSvgAssets.sell,
      'title': appFonts.bitcoin,
      'price': '20.65',
      'buy&sellID': 'Sell ID : #4496',
      'date&Time': '20 Feb - 5:00pm'
    },
    {
      'icon': eSvgAssets.buy,
      'title': appFonts.bitcoin,
      'price': '15.78',
      'buy&sellID': 'Buy ID : #4452 ',
      'date&Time': '11 Jan - 2:15pm'
    }
  ];
  var coinBitcoinUpdate = [
    {
      'image': eImageAssets.bitcoinFalls,
      'title': 'Bitcoin falls after CFTC sues crypto',
      'date': '13 Feb, 2023',
      'name': appFonts.smith
    },
    {
      'image': eImageAssets.bitcoinIsPoised,
      'title': 'Bitcoin is poised to blow up Africa ...',
      'date': '10 Jan, 2023',
      'name': appFonts.laila
    },
    {
      'image': eImageAssets.bitcoinMiningDiscourse,
      'title': 'Bitcoin mining discourse isn’t dead',
      'date': '28 Dec, 2022',
      'name': appFonts.brunot
    }
  ];

  var myCurrency = [
    {
      "title": appFonts.bitcoin,
      'subTitle': '- BTC',
      "per": "+11%",
      "mapIcons": eSvgAssets.mapSVG,
      "icon": eSvgAssets.bitcoinSVGIcon,
      "iconDark": eSvgAssets.bitcoinSVGIcon,
      "price": "45875.98",
      "upDownPrice": "-12.77",
      'off': '8%',
    },
    {
      "title": appFonts.ethereum,
      'subTitle': '- ETH',
      "per": "-25%",
      "mapIcons": eSvgAssets.redMapSVG,
      "icon": eSvgAssets.ethereumSVGIcon,
      "iconDark": eSvgAssets.ethereumSVGDarkIcon,
      "price": "20256.28",
      "upDownPrice": "+10.77",
      'off': '20%',
    },
    {
      "title": appFonts.tether,
      'subTitle': '- USDT',
      "per": "+30%",
      "mapIcons": eSvgAssets.mapSVG,
      "icon": eSvgAssets.tether,
      "iconDark": eSvgAssets.tether,
      "price": "10256.30",
      "upDownPrice": "+10.77",
      'off': '12%',
    },
    {
      "title": appFonts.dogecoin,
      'subTitle': '- DOGE',
      "per": "-18%",
      "mapIcons": eSvgAssets.redMapSVG,
      "icon": eSvgAssets.dogeCoin,
      "iconDark": eSvgAssets.dogeCoin,
      "price": "20256.28",
      "upDownPrice": "+10.77",
      'off': '20%',
    }
  ];
  var portfolioAmount = [
    {
      "icon": eSvgAssets.bitcoinBg,
      "title": appFonts.bitcoin,
      "price": "25000.00"
    },
    {
      "icon": eSvgAssets.ethereumBG,
      "title": appFonts.ethereum,
      "price": "35700.00"
    },
    {"icon": eSvgAssets.tetherBG, "title": appFonts.tether, "price": "4500.00"},
    {
      "icon": eSvgAssets.dogeCoinBG,
      "title": appFonts.dogecoin,
      "price": "4800.00"
    },
  ];
  var buyCurrencyTitle = [appFonts.buy, appFonts.sell];
  var buyAndSellHistoryScreen = [
    {
      'dayTitle': appFonts.today,
      "list": [
        {
          "title": appFonts.ethereum,
          "subTitle": appFonts.eth,
          'price': '10265.16',
          "per": "+5.17% ",
          'icon': eSvgAssets.ethereumBG
        },
        {
          "title": appFonts.bitcoin,
          'subTitle': appFonts.btc,
          "per": "+1.51% ",
          "icon": eSvgAssets.bitcoinBg,
          "price": "59.85"
        }
      ]
    },
    {
      'dayTitle': appFonts.yesterday,
      "list": [
        {
          "title": appFonts.binance,
          "subTitle": appFonts.bnb,
          'price': '55.30',
          "per": "+4.75% ",
          'icon': eSvgAssets.binance
        },
        {
          "title": appFonts.litecoin,
          "subTitle": appFonts.ltc,
          'price': '18.01',
          "per": "-0.26% ",
          'icon': eSvgAssets.litecoin
        },
        {
          "title": appFonts.tether,
          "subTitle": appFonts.usdt,
          'price': '19.20',
          "per": "-0.03% ",
          'icon': eSvgAssets.tetherBG
        },
        {
          "title": appFonts.ethereum,
          "subTitle": appFonts.eth,
          'price': '10265.16',
          "per": "+5.17% ",
          'icon': eSvgAssets.ethereumBG
        },
        {
          "title": appFonts.bitcoin,
          'subTitle': appFonts.btc,
          "per": "+1.51% ",
          "icon": eSvgAssets.bitcoinBg,
          "price": "59.85",
        }
      ]
    }
  ];
  var revenueFlowMonth = ['Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar'];
  var revenueFlowPercentage = [
    {
      'title': appFonts.btc,
      'per': '45%',
      "icon": eSvgAssets.revenueFlowYellowIcon
    },
    {
      'title': appFonts.eth,
      'per': '34%',
      "icon": eSvgAssets.revenueFlowPrimaryIcon
    },
    {
      'title': appFonts.usdt,
      'per': '10%',
      "icon": eSvgAssets.revenueFlowGreenIcon
    },
    {
      'title': appFonts.doge,
      'per': '11%',
      "icon": eSvgAssets.revenueFlowRedIcon
    },
  ];
  var candleChartButton = ["Today", "Week", "Month", "Year"];
  var monthsDate = [
    "22 Mar",
    "23 Mar",
    "24 Mar",
    "25 Mar",
    "26 Mar",
    "27 Mar",
    "28 Mar"
  ];
  var months = ["1D", "1M", "3M", "6M", "1Y"];
  var payListSelectCard = [
    {
      "value":0,
      "title": "Anirudhaa Mehra",
      "cardNumber": "**** **** **** 2563",
      "exDate": "Exp 12/24",
      "icon": eImageAssets.payCardOne
    },
    {
      "value":1,
      "title": "Shrushti Godgeren",
      "cardNumber": "**** **** **** 8956",
      "exDate": "Exp 08/24",
      "icon": eImageAssets.payCardTwo
    },
  ];

  List helpList = [
    {
      "title": appFonts.queryOne,
      "isSublistOpen": false,
      "subtitle": appFonts.queryOneSolution
    },
    {
      "title": appFonts.queryTwo,
      "isSublistOpen": false,
      "subtitle": appFonts.queryTwoSolutionOne
    },
    {
      "title": appFonts.queryThird,
      "isSublistOpen": false,
      "subtitle": appFonts.queryThirdSolution
    },
    {
      "title": appFonts.queryFour,
      "isSublistOpen": false,
      "subtitle": appFonts.queryForthSolution
    },
    {
      "title": appFonts.queryFifth,
      "isSublistOpen": false,
      "subtitle": appFonts.queryFifthSolution
    }
  ];
}
