import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_zh.dart';

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
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pt'),
    Locale('ru'),
    Locale('tr'),
    Locale('zh'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In pt, this message translates to:
  /// **'Breath Thingy'**
  String get appTitle;

  /// No description provided for @animationSection.
  ///
  /// In pt, this message translates to:
  /// **'Animação'**
  String get animationSection;

  /// No description provided for @timesSection.
  ///
  /// In pt, this message translates to:
  /// **'Tempos'**
  String get timesSection;

  /// No description provided for @cycleDuration.
  ///
  /// In pt, this message translates to:
  /// **'Ciclo {totalCycle}s'**
  String cycleDuration(int totalCycle);

  /// No description provided for @inhaleLabel.
  ///
  /// In pt, this message translates to:
  /// **'Inspirar'**
  String get inhaleLabel;

  /// No description provided for @holdLabel.
  ///
  /// In pt, this message translates to:
  /// **'Segurar'**
  String get holdLabel;

  /// No description provided for @exhaleLabel.
  ///
  /// In pt, this message translates to:
  /// **'Expirar'**
  String get exhaleLabel;

  /// No description provided for @startExercise.
  ///
  /// In pt, this message translates to:
  /// **'Iniciar Exercício'**
  String get startExercise;

  /// No description provided for @configLoadError.
  ///
  /// In pt, this message translates to:
  /// **'Erro ao carregar configuração'**
  String get configLoadError;

  /// No description provided for @phaseInhale.
  ///
  /// In pt, this message translates to:
  /// **'Inspire'**
  String get phaseInhale;

  /// No description provided for @phaseHold.
  ///
  /// In pt, this message translates to:
  /// **'Segure'**
  String get phaseHold;

  /// No description provided for @phaseExhale.
  ///
  /// In pt, this message translates to:
  /// **'Expire'**
  String get phaseExhale;

  /// No description provided for @phaseIdle.
  ///
  /// In pt, this message translates to:
  /// **'Pronto'**
  String get phaseIdle;

  /// No description provided for @cycleCount.
  ///
  /// In pt, this message translates to:
  /// **'Ciclo {cycle}'**
  String cycleCount(int cycle);

  /// No description provided for @completedCycles.
  ///
  /// In pt, this message translates to:
  /// **'Concluído! {cycles} ciclos'**
  String completedCycles(int cycles);

  /// No description provided for @readyToStart.
  ///
  /// In pt, this message translates to:
  /// **'Pronto para começar'**
  String get readyToStart;

  /// No description provided for @cycleProgress.
  ///
  /// In pt, this message translates to:
  /// **'Ciclo {current}/{total}'**
  String cycleProgress(int current, int total);

  /// No description provided for @animPolygonMorph.
  ///
  /// In pt, this message translates to:
  /// **'Polígonos'**
  String get animPolygonMorph;

  /// No description provided for @animParticleGather.
  ///
  /// In pt, this message translates to:
  /// **'Partículas'**
  String get animParticleGather;

  /// No description provided for @animRippleRings.
  ///
  /// In pt, this message translates to:
  /// **'Ondas'**
  String get animRippleRings;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'de',
    'en',
    'es',
    'fr',
    'it',
    'ja',
    'ko',
    'nl',
    'pt',
    'ru',
    'tr',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
