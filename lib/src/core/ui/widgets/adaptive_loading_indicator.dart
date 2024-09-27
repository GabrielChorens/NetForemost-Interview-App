import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveLoadingIndicator extends StatelessWidget {
  const AdaptiveLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: switch (Theme.of(context).platform) {
        TargetPlatform.iOS => const CupertinoActivityIndicator(),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
