import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      // test ad unit id
      return 'ca-app-pub-3940256099942544/6300978111';
    } else {
      throw 'Unknown platform';
    }
  }

  static String get interstitialUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/8691691433';
    } else {
      throw 'Unknown platform';
    }
  }
}



// call banner add

