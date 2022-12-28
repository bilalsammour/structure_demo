import 'package:structure_demo/app/configurations.dart';
import 'package:structure_demo/app/providers.dart';
import 'package:structure_demo/app/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:structure_demo/generated/l10n.dart';
import 'package:structure_demo/view/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: Providers.buildProviders(context),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Configurations.appTitle,
          theme: ThemeManager.theme,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: const HomeScreen(),
        ),
      );
}
