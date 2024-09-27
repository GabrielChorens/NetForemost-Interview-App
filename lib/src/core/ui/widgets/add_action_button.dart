import 'package:flutter/material.dart';
import 'package:interview_flutter/src/core/ui/colors.dart';

class AddActionButton extends FloatingActionButton {
  const AddActionButton({
    super.onPressed,
    super.key,
  }) : super(
          child: const Icon(Icons.add, size: 40),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          backgroundColor: AppColors.blue,
          foregroundColor: Colors.white,
          elevation: 0,
        );
}
