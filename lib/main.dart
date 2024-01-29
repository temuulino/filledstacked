import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/app_routing.dart';
import 'package:filledstacked/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:filledstacked/app/app.bottomsheets.dart';
import 'package:filledstacked/app/app.dialogs.dart';
import 'package:filledstacked/app/app.locator.dart';
import 'package:filledstacked/app/app.router.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'router.dart' as router;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await setupLocator(stackedRouter: stackedRouter);
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      preferDesktop: true,
      builder: (_) => MaterialApp(
        title: 'Some Academy',
        onGenerateRoute: router.generateRoute,
        initialRoute: HomeViewRoutes,
        theme: Theme.of(context).copyWith(
          primaryColor: kcBackgroundColor,
          focusColor: kcPrimaryColor,
          textTheme: GoogleFonts.openSansTextTheme().apply(
            bodyColor: Colors.white,
          ),
        ),
      ),
    ).animate().fadeIn(
          delay: const Duration(milliseconds: 50),
          duration: const Duration(milliseconds: 400),
        );
  }
}
