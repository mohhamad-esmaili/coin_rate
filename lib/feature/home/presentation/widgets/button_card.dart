import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final IconData? cardIconData;
  final String cardTitle;
  final String subtitle;
  final VoidCallback onTap;
  const ButtonCard({
    super.key,
    this.cardIconData,
    required this.cardTitle,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle themeTextStyle = Theme.of(context).textTheme.titleMedium!;
    return Expanded(
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(16),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    cardIconData ?? Icons.add_circle_rounded,
                    color: const Color(0xffedbe66),
                    size: 30,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      cardTitle,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        color: themeTextStyle.color,
                        fontSize: themeTextStyle.fontSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: onTap,
            child: Text(
              subtitle,
              style: TextStyle(
                color: themeTextStyle.color,
                fontSize: themeTextStyle.fontSize,
                decorationColor: themeTextStyle.color,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
