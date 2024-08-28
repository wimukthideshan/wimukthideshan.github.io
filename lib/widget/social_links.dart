import 'package:flutter/material.dart';
import 'package:portfolio/configs/configs.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/utils/utils.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,  // Adjust this value to control horizontal spacing between icons
      runSpacing: 10.0,  // Adjust this value to control vertical spacing if icons wrap to next line
      children: StaticUtils.socialIconURL
          .asMap()
          .entries
          .map(
            (e) => IconButton(
              icon: Image.network(
                e.value,
                color: Colors.black,
                height: 20.0,  // Adjust this value to make icons smaller
                width: 20.0,   // Adjust this value to make icons smaller
              ),
              onPressed: () => openURL(StaticUtils.socialLinks[e.key]),
              splashRadius: 20.0,
              hoverColor: AppTheme.c!.primary!.withAlpha(150),
              padding: EdgeInsets.zero,  // Remove default padding
            ),
          )
          .toList(),
    );
  }
}