import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMob {
  static final AdMob _singleton = new AdMob._internal();
  late BannerAd _banner;

  factory AdMob() {
    return _singleton;
  }

  AdMob._internal() {
//     MobileAds.instance
//         .initialize(appId: 'ca-app-pub-7516059448019339~7604779898');
//
//     MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//       keywords: <String>['TV shows', 'Simpsons', 'Bart', 'Gomer', 'movie'],
//       testDevices: <String>[], // Android emulators are considered test devices
//     );
//
//     _banner = BannerAd(
// //      adUnitId: BannerAd.testAdUnitId,
//       adUnitId: "ca-app-pub-7516059448019339/3500462478",
//       size: AdSize.smartBanner,
//       targetingInfo: targetingInfo,
//       listener: (MobileAdEvent event) {
//         print("BannerAd event is $event");
//       },
//     );
  }

  void showBanner() {
    // _banner
    //   // typically this happens well before the ad is shown
    //   ..load()
    //   ..show(
    //     anchorType: AnchorType.bottom,
    //   );
  }
}
