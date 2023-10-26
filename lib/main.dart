import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mplan_mobile/api/repositories/plan_repository.dart';
import 'package:mplan_mobile/gen/assets.gen.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/pages/personal_plan_page.dart';
import 'package:mplan_mobile/pages/plan_page.dart';
import 'package:mplan_mobile/pages/settings_page.dart';
import 'package:mplan_mobile/theme.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> main() async {
  // Wait for the widget binding to be initialized before initializing
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // Preserve splash screen to do the initialization before calling runApp
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Disable runtime fetching of Google Fonts
  GoogleFonts.config.allowRuntimeFetching = false;

  // Add license for the used Google Font
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString(Assets.fonts.ofl);
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  // Get package info
  final packageInfo = await PackageInfo.fromPlatform();

  await initializeDateFormatting();
  timeago.setLocaleMessages('de', timeago.DeMessages());

  // Initialize Hive
  await Hive.initFlutter();

  // SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();

  // Dependency injection
  GetIt.I.registerSingleton<PackageInfo>(packageInfo);
  GetIt.I.registerSingleton<PlanRepository>(PlanRepository());
  GetIt.I.registerSingleton<SharedPreferences>(sharedPreferences);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _selectedDestination = 1;
  List<({NavigationDestination destination, Widget widget})> getDestinations(
    BuildContext context,
  ) {
    return [
      (
        destination: NavigationDestination(
          icon: const Icon(Icons.calendar_month_outlined),
          label: context.l10n.planPage_title,
        ),
        widget: const PlanPage()
      ),
      (
        destination: NavigationDestination(
          icon: const Icon(Icons.person_outline_outlined),
          label: context.l10n.perosnalPlanPage_title,
        ),
        widget: const PersonalPlanPage()
      ),
      (
        destination: NavigationDestination(
          icon: const Icon(Icons.settings_outlined),
          label: context.l10n.settingsPage_title,
        ),
        widget: const SettingsPage()
      ),
    ];
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Remove the splash screen
    FlutterNativeSplash.remove();

    return MaterialApp(
      title: 'Messdienerplan',
      theme: getTheme(Brightness.light),
      darkTheme: getTheme(Brightness.dark),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('de'),
      ],
      locale: const Locale('de'),
      home: Builder(
        builder: (context) {
          final destinations = getDestinations(context);
          final currentDestination = destinations[_selectedDestination].widget;

          return Scaffold(
            bottomNavigationBar: NavigationBar(
              onDestinationSelected: (index) {
                setState(() {
                  _selectedDestination = index;
                });
              },
              selectedIndex: _selectedDestination,
              destinations: destinations.map((e) => e.destination).toList(),
            ),
            body: SafeArea(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: currentDestination,
              ),
            ),
          );
        },
      ),
    );
  }
}
