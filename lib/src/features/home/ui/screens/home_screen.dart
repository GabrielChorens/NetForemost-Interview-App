import 'package:flutter/material.dart';
import 'package:interview_flutter/resources/l10n/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.l10n.pending_implementation),
    );
  }
}
