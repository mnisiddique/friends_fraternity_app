import 'package:shared_preferences/shared_preferences.dart';

abstract class SourcePreference {
  static const String kSourcePreferenceKey = "SOURCE_PREFERENCE";
  Future<bool> setLocalAsPreferredDataSource(bool isLocalDataSource);
  bool isLocalDataSource();
}

class SourcePreferenceImpl implements SourcePreference {
  final SharedPreferences prefs;

  SourcePreferenceImpl(this.prefs);

  @override
  bool isLocalDataSource() {
    return prefs.getBool(SourcePreference.kSourcePreferenceKey) ?? false;
  }

  @override
  Future<bool> setLocalAsPreferredDataSource(bool isLocalDataSource) async {
    return await prefs.setBool(
      SourcePreference.kSourcePreferenceKey,
      isLocalDataSource,
    );
  }
}
