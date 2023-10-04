import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mplan_mobile/api/repositories/plan_repository.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/pages/personal_plan_page.dart';
import 'package:mplan_mobile/pages/plan_page.dart';
import 'package:mplan_mobile/pages/settings_page.dart';
import 'package:mplan_mobile/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  timeago.setLocaleMessages('de', timeago.DeMessages());

  // Initialize Hive
  await Hive.initFlutter();

  // SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();

  // Dependency injection
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
  List<(NavigationDestination destination, Widget widget)> getDestinations(
    BuildContext context,
  ) {
    return [
      (
        NavigationDestination(
          icon: const Icon(Icons.list),
          label: context.l10n.planPage_title,
        ),
        const PlanPage()
      ),
      (
        NavigationDestination(
          icon: const Icon(Icons.person),
          label: context.l10n.perosnalPlanPage_title,
        ),
        const PersonalPlanPage()
      ),
      (
        NavigationDestination(
          icon: const Icon(Icons.settings),
          label: context.l10n.settingsPage_title,
        ),
        const SettingsPage()
      ),
    ];
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messdienerplan',
      theme: getTheme(Brightness.light),
      darkTheme: getTheme(Brightness.dark),
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
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

          return Scaffold(
            bottomNavigationBar: NavigationBar(
              onDestinationSelected: (index) {
                setState(() {
                  _selectedDestination = index;
                });
              },
              selectedIndex: _selectedDestination,
              destinations: destinations.map((e) => e.$1).toList(),
            ),
            body: SafeArea(
              child: destinations[_selectedDestination].$2,
            ),
          );
        },
      ),
    );
  }
}
