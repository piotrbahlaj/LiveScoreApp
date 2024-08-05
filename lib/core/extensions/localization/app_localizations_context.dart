import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension Localization on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;
}

AppLocalizations get translations => _translations!;
AppLocalizations? _translations;

class AppTranslations {
  static init(BuildContext context) {
    _translations = AppLocalizations.of(context);
  }
}
