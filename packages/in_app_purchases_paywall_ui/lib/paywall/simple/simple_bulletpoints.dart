import 'package:flutter/material.dart';
import 'package:in_app_purchases_paywall_ui/in_app_purchases_paywall_ui.dart';
import 'package:responsive_spacing/responsive_spacing.dart';

/// Simple bullet point widget
class SimpleBulletPoints extends StatelessWidget {
  /// Bullet points
  final List<IconAndText> bulletPoints;

  const SimpleBulletPoints(this.bulletPoints);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: bulletPoints
          .map<Widget>((bulletPoint) => Row(
            children: [
                Icon(
                  bulletPoint.icon,
                  size: context.spacing.iconSize,
                  color: Theme.of(context).iconTheme.color,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      bulletPoint.text,
                      style: const TextStyle(fontSize: 16, height: 1.0),
                    ),
                  ),
                ),
              ],
          ))
          .toList(growable: false),
    );
  }
}
