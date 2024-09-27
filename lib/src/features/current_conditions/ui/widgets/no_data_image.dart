import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_flutter/resources/l10n/l10n.dart';
import 'package:interview_flutter/src/core/ui/colors.dart';

///Widget that displays an image and a text when there is no data to show.
class NoDataImage extends StatelessWidget {
  const NoDataImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/icons/home_background.svg',
            width: MediaQuery.of(context).size.height * 0.18,
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          const SizedBox(height: 10),
          Text(
            context.l10n.no_data,
            style: const TextStyle(
              fontSize: 20,
              color: AppColors.darkGray,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.55,
            child: Text(
              textAlign: TextAlign.center,
              context.l10n.please_add_tracker,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.darkGray,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
