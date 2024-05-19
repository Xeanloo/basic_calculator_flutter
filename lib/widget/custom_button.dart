import 'package:flutter/material.dart';

final ButtonStyle baseButtonStyle = ElevatedButton.styleFrom(
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
  backgroundColor: Colors.white,
);

final ButtonStyle delButtonStyle = baseButtonStyle.copyWith(
  backgroundColor: WidgetStateProperty.all(Colors.red[400]),
  foregroundColor: WidgetStateProperty.all(Colors.white),
);

final ButtonStyle equalButtonStyle = baseButtonStyle.copyWith(
  backgroundColor: WidgetStateProperty.all(Colors.blue[400]),
  foregroundColor: WidgetStateProperty.all(Colors.white),
);

final ButtonStyle operatorButtonStyle = baseButtonStyle.copyWith(
  backgroundColor: WidgetStateProperty.all(Colors.grey[200]),
  foregroundColor: WidgetStateProperty.all(Colors.black),
);

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    this.onTap,
    this.customStyle,
  });

  final String buttonText;
  final Function()? onTap;
  final ButtonStyle? customStyle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: customStyle ?? baseButtonStyle,
        onPressed: onTap,
        child: Text(buttonText,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
