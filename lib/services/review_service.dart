import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReviewService {
  static const String _appOpensKey = 'app_opens_count';
  static const int _targetOpens = 6;

  final InAppReview _inAppReview = InAppReview.instance;

  Future<void> checkAndRequestReview() async {
    final prefs = await SharedPreferences.getInstance();

    int currentOpens = prefs.getInt(_appOpensKey) ?? 0;
    currentOpens++;
    await prefs.setInt(_appOpensKey, currentOpens);

    if (currentOpens > 0 && currentOpens % _targetOpens == 0) {
      if (await _inAppReview.isAvailable()) {
        await _inAppReview.requestReview();
      }
    }
  }
}
