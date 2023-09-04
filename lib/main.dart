import 'package:flutter/material.dart';
import 'package:appurupai/route/route.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:appurupai/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(App(
    savedThemeMode: savedThemeMode,
  ));
}

class App extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const App({super.key, this.savedThemeMode});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: appLightTheme,
      dark: appDarkTheme,
      initial: savedThemeMode ?? AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp.router(
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: routes,
      ),
    );
  }
}
