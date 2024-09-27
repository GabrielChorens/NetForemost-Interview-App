import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_flutter/resources/l10n/l10n.dart';
import 'package:interview_flutter/src/core/di/app_injection.dart';
import 'package:interview_flutter/src/core/locale/language_cubit.dart';
import 'package:interview_flutter/src/core/routing/go_router.dart';

class InterviewFlutterApp extends StatelessWidget {
  const InterviewFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final languageCubit = getIt<LanguageCubit>();
    return BlocBuilder<LanguageCubit, Locale>(
      bloc: languageCubit,
      builder: (context, locale) {
        return SafeArea(
          child: MaterialApp.router(
            locale: locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            routerConfig: router,
            title: 'Interview Flutter',
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
