import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_flutter/resources/l10n/l10n.dart';
import 'package:interview_flutter/src/core/di/app_injection.dart';
import 'package:interview_flutter/src/core/locale/language_cubit.dart';
import 'package:interview_flutter/src/core/ui/utils.dart';

///Addition to manually change the app language
class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 22,
            ),
            child: Text(
              context.l10n.lang,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: BlocBuilder<LanguageCubit, Locale>(
              bloc: getIt<LanguageCubit>(),
              builder: (context, locale) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownButtonFormField(
                      value: locale.languageCode.substring(0, 2),
                      items: () {
                        final locales =
                            AppLocalizations.supportedLocales.map((locale) {
                          return DropdownMenuItem(
                            value: locale.languageCode.substring(0, 2),
                            child: Text(localeTranslation(context, locale)),
                          );
                        }).toList();
                        return locales;
                      }(),
                      onChanged: (locale) {
                        final localeToChange = locale;
                        if (localeToChange != null) {
                          getIt<LanguageCubit>()
                              .changeLanguage(Locale(localeToChange));
                        }
                      },
                      decoration: appInputDecoration,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

///Translate locale.languageCode to the language name
String localeTranslation(BuildContext context, Locale locale) {
  switch (locale.languageCode) {
    case 'en':
      return context.l10n.english;
    case 'es':
      return context.l10n.spanish;
    default:
      return locale.languageCode;
  }
}
