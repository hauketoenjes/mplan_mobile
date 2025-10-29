import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mplan_mobile/gen/assets.gen.dart';
import 'package:mplan_mobile/l10n/app_localizations.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/pages/foreword_page.dart';
import 'package:mplan_mobile/pages/personal_plan_page.dart';
import 'package:mplan_mobile/pages/plan_page.dart';
import 'package:mplan_mobile/pages/settings_page.dart';
import 'package:mplan_mobile/providers/foreword_provider/foreword_provider.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_notifier.dart';
import 'package:mplan_mobile/providers/plan_provider/plan_provider.dart';
import 'package:mplan_mobile/providers/timeofday_provider/timeofday_provider.dart';
import 'package:mplan_mobile/theme.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

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

  await initializeDateFormatting();
  timeago.setLocaleMessages('de', timeago.DeMessages());

  // Initialize Hive
  await Hive.initFlutter();

  // SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();

  // Get package info
  final packageInfo = await PackageInfo.fromPlatform();

  // Notifications
  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  const initializationSettings = InitializationSettings(
    android: AndroidInitializationSettings('app_icon'),
    iOS: DarwinInitializationSettings(),
  );
  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  // Request notification permissions on Android
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >()
      ?.requestNotificationsPermission();

  // Timezone. Initialize with Europe/Berlin as local timezone
  tz.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation('Europe/Berlin'));

  // Run the app and override the providers with the values acquired above
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        packageInfoProvider.overrideWithValue(packageInfo),
        localNotificationsPluginProvider.overrideWithValue(
          flutterLocalNotificationsPlugin,
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Invalidate the providers to refetch the data
      // when the app is resumed
      ref
        ..invalidate(notificationProvider)
        ..invalidate(fetchPlanProvider)
        ..invalidate(fetchForewordProvider)
        ..invalidate(getTimeOfDayProvider);
    }
    super.didChangeAppLifecycleState(state);
  }

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
        widget: const PlanPage(),
      ),
      (
        destination: NavigationDestination(
          icon: const Icon(Icons.person_outline_outlined),
          label: context.l10n.perosnalPlanPage_title,
        ),
        widget: const PersonalPlanPage(),
      ),
      (
        destination: NavigationDestination(
          icon: const Icon(Icons.description_outlined),
          label: context.l10n.forewordPage_title,
        ),
        widget: const ForewordPage(),
      ),
      (
        destination: NavigationDestination(
          icon: const Icon(Icons.settings_outlined),
          label: context.l10n.settingsPage_title,
        ),
        widget: const SettingsPage(),
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
                HapticFeedback.selectionClick();
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
