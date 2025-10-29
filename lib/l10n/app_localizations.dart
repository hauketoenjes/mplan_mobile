import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('de')];

  /// No description provided for @perosnalPlanPage_title.
  ///
  /// In de, this message translates to:
  /// **'Mein Plan'**
  String get perosnalPlanPage_title;

  /// No description provided for @personalPlanPage_greeting_morning.
  ///
  /// In de, this message translates to:
  /// **'Guten Morgen,'**
  String get personalPlanPage_greeting_morning;

  /// No description provided for @personalPlanPage_greeting_afternoon.
  ///
  /// In de, this message translates to:
  /// **'Moin,'**
  String get personalPlanPage_greeting_afternoon;

  /// No description provided for @personalPlanPage_greeting_evening.
  ///
  /// In de, this message translates to:
  /// **'Guten Abend,'**
  String get personalPlanPage_greeting_evening;

  /// No description provided for @personalPlanPage_hint.
  ///
  /// In de, this message translates to:
  /// **'Dein Name'**
  String get personalPlanPage_hint;

  /// No description provided for @personalPlanPage_intro.
  ///
  /// In de, this message translates to:
  /// **'Du bist im aktuellen Plan {count, plural, =0{kein} =1{noch ein} other{noch {count}}} Mal aufgestellt.'**
  String personalPlanPage_intro(num count);

  /// No description provided for @personalPlanPage_emptyName.
  ///
  /// In de, this message translates to:
  /// **'Um deinen persönlichen Plan zu sehen, gib deinen Namen genauso ein, wie er auf der Website steht. Tippe dazu einfach auf den Text oben.'**
  String get personalPlanPage_emptyName;

  /// No description provided for @personalPlanPage_nextTime.
  ///
  /// In de, this message translates to:
  /// **'Das nächste Mal {timeago}.'**
  String personalPlanPage_nextTime(String timeago);

  /// No description provided for @personalPlanPage_calendarDescription.
  ///
  /// In de, this message translates to:
  /// **'Rolle: {role}\nOrt: {location}\nWeitere Information: {info}'**
  String personalPlanPage_calendarDescription(
    String role,
    String location,
    String info,
  );

  /// No description provided for @personalPlanPage_calendarTitle.
  ///
  /// In de, this message translates to:
  /// **'Messe dienen'**
  String get personalPlanPage_calendarTitle;

  /// No description provided for @planPage_title.
  ///
  /// In de, this message translates to:
  /// **'Dienstplan'**
  String get planPage_title;

  /// No description provided for @forewordPage_title.
  ///
  /// In de, this message translates to:
  /// **'Vorwort'**
  String get forewordPage_title;

  /// No description provided for @forewordPage_refreshedAt.
  ///
  /// In de, this message translates to:
  /// **'Zuletzt aktualisiert am'**
  String get forewordPage_refreshedAt;

  /// No description provided for @settingsPage_title.
  ///
  /// In de, this message translates to:
  /// **'Einstellungen'**
  String get settingsPage_title;

  /// No description provided for @settingsPage_about.
  ///
  /// In de, this message translates to:
  /// **'Über diese App'**
  String get settingsPage_about;

  /// No description provided for @settingsPage_aboutDescription.
  ///
  /// In de, this message translates to:
  /// **'Informationen über diese App. Lizenzen, Versionsnummer, usw.'**
  String get settingsPage_aboutDescription;

  /// No description provided for @settingsPage_aboutDialog.
  ///
  /// In de, this message translates to:
  /// **'App zum Anzeigen des Messdienerplans der Messdiener St. Vitus Visbek.'**
  String get settingsPage_aboutDialog;

  /// No description provided for @settingsPage_dataPrivacy.
  ///
  /// In de, this message translates to:
  /// **'Datenschutz'**
  String get settingsPage_dataPrivacy;

  /// No description provided for @settingsPage_dataPrivacyDescription.
  ///
  /// In de, this message translates to:
  /// **'Informationen über die Verwendung deiner Daten.'**
  String get settingsPage_dataPrivacyDescription;

  /// No description provided for @settingsPage_plan.
  ///
  /// In de, this message translates to:
  /// **'Plan öffnen'**
  String get settingsPage_plan;

  /// No description provided for @settingsPage_planDescription.
  ///
  /// In de, this message translates to:
  /// **'Öffne den Plan auf der Website.'**
  String get settingsPage_planDescription;

  /// No description provided for @settingsPage_cancelAllNotifcations.
  ///
  /// In de, this message translates to:
  /// **'Alle Erinnerungen löschen'**
  String get settingsPage_cancelAllNotifcations;

  /// No description provided for @settingsPage_cancelAllNotifcationsDescription.
  ///
  /// In de, this message translates to:
  /// **'Alle eingestellen Erinnerungen werden gelöscht ({count})'**
  String settingsPage_cancelAllNotifcationsDescription(num count);

  /// No description provided for @planCard_noLocation.
  ///
  /// In de, this message translates to:
  /// **'Kein Ort'**
  String get planCard_noLocation;

  /// No description provided for @planCard_noInformation.
  ///
  /// In de, this message translates to:
  /// **'Keine Info'**
  String get planCard_noInformation;

  /// No description provided for @general_addToCalendar.
  ///
  /// In de, this message translates to:
  /// **'Zum Kalender hinzufügen'**
  String get general_addToCalendar;

  /// No description provided for @general_networkError.
  ///
  /// In de, this message translates to:
  /// **'Beim Laden der Daten ist ein Fehler aufgetreten. Bitte versuche es später erneut.'**
  String get general_networkError;

  /// No description provided for @general_emptyList.
  ///
  /// In de, this message translates to:
  /// **'Keine Einträge'**
  String get general_emptyList;

  /// No description provided for @reminder_setReminder.
  ///
  /// In de, this message translates to:
  /// **'Erinnerung einstellen'**
  String get reminder_setReminder;

  /// No description provided for @reminder_description.
  ///
  /// In de, this message translates to:
  /// **'Wähle aus, wann du erinnert werden möchtest. Es kann nur eine Erinnerung pro Messe eingestellt werden.'**
  String get reminder_description;

  /// No description provided for @reminder_1week.
  ///
  /// In de, this message translates to:
  /// **'Eine Woche vorher'**
  String get reminder_1week;

  /// No description provided for @reminder_1day.
  ///
  /// In de, this message translates to:
  /// **'Einen Tag vorher'**
  String get reminder_1day;

  /// No description provided for @reminder_12hours.
  ///
  /// In de, this message translates to:
  /// **'Zwölf Stunden vorher'**
  String get reminder_12hours;

  /// No description provided for @reminder_1hour.
  ///
  /// In de, this message translates to:
  /// **'Eine Stunde vorher'**
  String get reminder_1hour;

  /// No description provided for @reminder_remove.
  ///
  /// In de, this message translates to:
  /// **'Erinnerung entfernen'**
  String get reminder_remove;

  /// No description provided for @reminder_notificationSubtitle.
  ///
  /// In de, this message translates to:
  /// **'Erinnerung'**
  String get reminder_notificationSubtitle;

  /// No description provided for @reminder_notificationBody.
  ///
  /// In de, this message translates to:
  /// **'Du musst am {date} um {time} Messe dienen.'**
  String reminder_notificationBody(String date, String time);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
