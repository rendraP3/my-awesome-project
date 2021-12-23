part of style;

// ignore: avoid_classes_with_only_static_members
class Style {
  static void styleDefault() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: mColorNavigationBar,
        systemNavigationBarIconBrightness: Brightness.light));
  }
}