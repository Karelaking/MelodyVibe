import 'package:flutter/material.dart';
import 'package:melodyvibe/Constants/size.dart';

class FullSizedRoundedButton extends StatelessWidget {
 const FullSizedRoundedButton({super.key, this.fontWeight = FontWeight.w800, required this.text, this.prefixIcon = const Icon(Icons.abc), this.suffixIcon= const Icon(Icons.arrow_forward_rounded), this.prefix = false, this.suffix = false, this.borderRadius = 15, this.fontSize = 25});

  final FontWeight fontWeight;
  final String text;
  final Icon prefixIcon;
  final bool prefix;
  final Icon suffixIcon;
  final bool suffix;
  final double borderRadius;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height:AppSize().height(context,0.15),
      width: AppSize().width100(context),
      child: Expanded(
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              prefix ? prefixIcon : const SizedBox(),
              RichText(
                text: TextSpan(
                  text:text,
                  style: TextStyle(
                      fontSize: fontSize, fontWeight: fontWeight, letterSpacing: 2),
                ),
              ),
              suffix ? suffixIcon : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
