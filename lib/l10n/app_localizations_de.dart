// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get perosnalPlanPage_title => 'Mein Plan';

  @override
  String get personalPlanPage_greeting_morning => 'Guten Morgen,';

  @override
  String get personalPlanPage_greeting_afternoon => 'Moin,';

  @override
  String get personalPlanPage_greeting_evening => 'Guten Abend,';

  @override
  String get personalPlanPage_hint => 'Dein Name';

  @override
  String personalPlanPage_intro(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'noch $countString',
      one: 'noch ein',
      zero: 'kein',
    );
    return 'Du bist im aktuellen Plan $_temp0 Mal aufgestellt.';
  }

  @override
  String get personalPlanPage_emptyName =>
      'Um deinen persönlichen Plan zu sehen, gib deinen Namen genauso ein, wie er auf der Website steht. Tippe dazu einfach auf den Text oben.';

  @override
  String personalPlanPage_nextTime(String timeago) {
    return 'Das nächste Mal $timeago.';
  }

  @override
  String personalPlanPage_calendarDescription(
    String role,
    String location,
    String info,
  ) {
    return 'Rolle: $role\nOrt: $location\nWeitere Information: $info';
  }

  @override
  String get personalPlanPage_calendarTitle => 'Messe dienen';

  @override
  String get planPage_title => 'Dienstplan';

  @override
  String get forewordPage_title => 'Vorwort';

  @override
  String get forewordPage_refreshedAt => 'Zuletzt aktualisiert am';

  @override
  String get settingsPage_title => 'Einstellungen';

  @override
  String get settingsPage_about => 'Über diese App';

  @override
  String get settingsPage_aboutDescription =>
      'Informationen über diese App. Lizenzen, Versionsnummer, usw.';

  @override
  String get settingsPage_aboutDialog =>
      'App zum Anzeigen des Messdienerplans der Messdiener St. Vitus Visbek.';

  @override
  String get settingsPage_dataPrivacy => 'Datenschutz';

  @override
  String get settingsPage_dataPrivacyDescription =>
      'Informationen über die Verwendung deiner Daten.';

  @override
  String get settingsPage_plan => 'Plan öffnen';

  @override
  String get settingsPage_planDescription => 'Öffne den Plan auf der Website.';

  @override
  String get settingsPage_cancelAllNotifcations => 'Alle Erinnerungen löschen';

  @override
  String settingsPage_cancelAllNotifcationsDescription(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    return 'Alle eingestellen Erinnerungen werden gelöscht ($countString)';
  }

  @override
  String get planCard_noLocation => 'Kein Ort';

  @override
  String get planCard_noInformation => 'Keine Info';

  @override
  String get general_addToCalendar => 'Zum Kalender hinzufügen';

  @override
  String get general_networkError =>
      'Beim Laden der Daten ist ein Fehler aufgetreten. Bitte versuche es später erneut.';

  @override
  String get general_emptyList => 'Keine Einträge';

  @override
  String get reminder_setReminder => 'Erinnerung einstellen';

  @override
  String get reminder_description =>
      'Wähle aus, wann du erinnert werden möchtest. Es kann nur eine Erinnerung pro Messe eingestellt werden.';

  @override
  String get reminder_1week => 'Eine Woche vorher';

  @override
  String get reminder_1day => 'Einen Tag vorher';

  @override
  String get reminder_12hours => 'Zwölf Stunden vorher';

  @override
  String get reminder_1hour => 'Eine Stunde vorher';

  @override
  String get reminder_remove => 'Erinnerung entfernen';

  @override
  String get reminder_notificationSubtitle => 'Erinnerung';

  @override
  String reminder_notificationBody(String date, String time) {
    return 'Du musst am $date um $time Messe dienen.';
  }
}
