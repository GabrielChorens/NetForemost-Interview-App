import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_flutter/resources/l10n/l10n.dart';

class ForemostAppbar extends AppBar {
  ForemostAppbar({
    required BuildContext context,
    super.key,
  }) : super(
          title: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/app_icon.svg',
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 10),
              Text(
                context.l10n.app_name,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.black,
        );
}
