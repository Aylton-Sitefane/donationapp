import 'package:donationapp/core/config/extensions.dart';
import 'package:donationapp/core/config/theme/app_theme.dart';
import 'package:donationapp/core/config/user_sharedpreferences.dart';
import 'package:donationapp/core/data/data_provider.dart';
import 'package:donationapp/views/homeclient/profile/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/config/theme/provider/theme_provider.dart';
import 'views/spashscreen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSharedpreferences.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => DataProvider()),
      ChangeNotifierProvider(create: (context) => ProfileProvider(context.dataProvider),),
    ],
    child: const MyApp(),),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (BuildContext context) => ThemeProvider()..init(),
      child: Consumer<ThemeProvider>(
        builder: (context, ThemeProvider provider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: provider.isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
            darkTheme: provider.isDark ? AppTheme.darkTheme : AppTheme.lightTheme,

            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}