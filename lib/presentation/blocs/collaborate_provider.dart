import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CollaborateProvider extends Cubit<bool> {
  CollaborateProvider() : super(false) {
    init();
  }

  late int _counter;

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final hasShowed = prefs.getBool('collaborated_dialog_showed') ?? false;

    if (!hasShowed) {
      _counter = await getExecutionCount();
      if (_counter > 10) {
        emit(true);
      }
    }
  }

  Future<void> resetCollaboratedShowed() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('collaborated_dialog_showed', false);
    await prefs.setInt('app_execution_count', 0);
  }

  Future<void> setCollaboratedShowed() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('collaborated_dialog_showed', true);
    emit(false);
  }

  Future<int> getExecutionCount() async {
    final prefs = await SharedPreferences.getInstance();
    final execCount = prefs.getInt('app_execution_count') ?? 0;
    await prefs.setInt('app_execution_count', execCount + 1);
    return execCount + 1;
  }

  void toggleCollaborate() => emit(!state);
}
