import 'package:mplan_mobile/api/models/migration_notice.dart';

/// The URL to the privacy policy
Uri dataPrivacyUrl = Uri.parse('https://messdiener-visbek.de/app-privacy');

/// The URL to the plan
Uri planUrl = Uri.parse('https://messdiener-visbek.de/plan');

/// The URL to the plan fetch function
Uri planFetchUrl = Uri.parse(
  'https://mplan.messdiener-visbek.de/api/plan',
);

/// The URL to the foreword fetch function
Uri forewordFetchUrl = Uri.parse(
  'https://directus.htoenjes.dev/items/foreword',
);

/// The URL to the migration settings (a Directus singleton)
Uri migrationFetchUrl = Uri.parse(
  'https://directus.htoenjes.dev/items/app_migration',
);

/// The lowest migration stage, whatever the CMS says. Raised to
/// [MigrationStage.hard] for the last release before the app leaves the
/// stores, so it keeps showing the notice once the CMS is gone.
const MigrationStage migrationStageFloor = MigrationStage.off;

/// Turnus in the App Store
Uri turnusAppStoreUrl = Uri.parse('https://apps.apple.com/app/id6821334860');

/// Turnus in the Play Store
Uri turnusPlayStoreUrl = Uri.parse(
  'https://play.google.com/store/apps/details?id=de.turnusapp.app',
);
